---
nr: 0010
title: Escalamiento y delegación se resuelven sobre la jerarquía IAM, sin scheduler
status: Aceptado
fecha: 2026-05-09
decisores: equipo FLOWTEX
---

# ADR-0010: Escalamiento y delegación se resuelven sobre la jerarquía IAM, sin scheduler

- **Estado**: Aceptado
- **Fecha**: 2026-05-09
- **Decisores**: equipo FLOWTEX
- **Relacionado con**: ADR-0008, ADR-0009

## Contexto

El backlog histórico (cap. I, HU08 y HU10 antiguas) y la persona Gabriel Mora (cap. II del workspace de calidad, pain points PD-06 y PD-07) describen dos comportamientos automáticos:

1. **Escalamiento por SLA:** si el aprobador no responde en N horas, el sistema reasigna automáticamente al aprobador del nivel superior y notifica.
2. **Delegación calendarizada:** un aprobador define un período de ausencia y, durante ese período, las solicitudes se redirigen a un suplente designado.

Ambos comportamientos asumen un **scheduler asíncrono** que examina periódicamente las solicitudes en curso, calcula vencimientos y emite eventos de reasignación.

El backend `flowtex-web-service` de hoy no tiene scheduler. El `WorkflowEngine` (`com.flowtex.Tracking.Application.Internal.OutboundServices.WorkflowEngine`) es síncrono: se invoca al envío de la solicitud y a cada decisión de aprobador. No hay ni `@Scheduled`, ni Quartz, ni colas asíncronas, ni triggers de base de datos.

Construir la infraestructura de scheduler y persistencia de estado de timers para el MVP introduce complejidad operativa (workers, idempotencia, recuperación ante reinicios) que no se justifica frente al valor entregado en el ciclo académico.

Al mismo tiempo, el modelo IAM ya tiene los datos necesarios para resolver ambos casos sin scheduler: jerarquía Claro completa (`Position`: PRACTICANTE → ANALISTA → JEFE → GERENTE → SUBDIRECTOR → DIRECTOR), área (`Area`: 11 áreas), y aprobadores ya tipificados como `USER`, `AREA_POSITION` o `ROLE`.

## Decisión

Escalamiento y delegación se redibujan como **decisiones del resolver de aprobadores**, ejecutadas en el momento de **encolar el paso**, no como jobs periódicos.

### Delegación temporal

Cada usuario puede declarar un suplente y un rango de fechas (`delegated_to_user_id`, `delegation_start_at`, `delegation_end_at`). Al encolar un paso cuyo aprobador resuelto sea ese usuario, si la fecha actual cae dentro del rango, el paso se asigna al suplente y se registra el evento `DELEGATED` en el audit log de la submission.

### Escalamiento por jerarquía

Cuando el aprobador del paso es de tipo `AREA_POSITION` (por ejemplo "JEFE de TECNOLOGIA") y no existe ningún usuario activo con esa combinación de área y cargo, el resolver sube un nivel en la escalera Claro (PRACTICANTE → ANALISTA → JEFE → GERENTE → SUBDIRECTOR → DIRECTOR) hasta encontrar a alguien. Si no hay nadie en toda la cadena de la misma área, el paso se asigna al aprobador con rol `ROLE_ADMIN` y se registra evento `ESCALATED`.

### Reasignación manual por administrador

Para los casos que no encajan en delegación ni en escalamiento (aprobador en período válido pero inactivo de hecho), un usuario con `ROLE_ADMIN` puede reasignar el paso a otro aprobador desde la vista de detalle de la solicitud. Esto cubre el caso de "aprobador en vacaciones sin haber declarado delegación".

### Lo que NO se hace

- **No hay** "si no responde en 48 horas, escalar automáticamente". Eso requiere scheduler y queda fuera del MVP.
- **No hay** notificación previa de "tu plazo vence en 24 horas". Tampoco: requiere temporizadores.
- **No hay** delegación en cadena (suplente del suplente). El registro es directo aprobador → suplente.

## Alternativas consideradas

- **Implementar scheduler con Spring `@Scheduled` y tabla `pending_step_deadlines`:** descartado porque introduce un componente operativo que el equipo no opera (workers, deduplicación, recuperación tras caídas) y porque el valor diferencial frente a la decisión actual no compensa en el alcance académico.
- **Delegar el escalamiento al cliente operativamente:** que un admin revise la bandeja "asignadas" y reasigne manualmente. Es lo que cubre la HU-OP-03, pero no resuelve el caso de "no hay nadie en JEFE de TECNOLOGIA porque el cargo está vacante" — para eso sirve la jerarquía automática.
- **Resolver en el resolver del aprobador (la elegida):** cero infraestructura nueva, los datos ya existen en IAM, los criterios de aceptación son verificables porque se ejecutan en el envío y la decisión, no "cuando suene la alarma".

## Consecuencias

### Positivas

- Implementación contenida: una clase de dominio `ApproverResolver` y dos columnas en la tabla `users` (delegate_user_id, delegation_window). Sin nuevos componentes operativos.
- Los criterios de aceptación de HU-OP-01 y HU-OP-02 se verifican en QA con escenarios deterministas (vacíar el cargo en la base, configurar delegación con fecha de hoy, enviar solicitud, observar a quién se asigna).
- La escalera Claro queda como dato de dominio, no como configuración por flujo. Una sola fuente de verdad.

### Negativas / costos

- El producto no atiende el caso de "el aprobador existe, está activo y no responde". El proceso queda detenido hasta que un admin intervenga manualmente (HU-OP-03). Es una pérdida frente a NINTEX si NINTEX tuviera ese comportamiento (que tampoco está claro que tenga, ver ADR-0008 sobre el benchmark cualitativo).
- El backlog histórico HU10 (escalamiento por SLA) queda como Won't Have del MVP. Si en un ciclo futuro se construye el scheduler, este ADR se reemplaza por un ADR de "escalamiento por SLA con scheduler" que documente la migración.

### Riesgos

- **Cadena rota:** si una jerarquía completa de área queda vacía (lo cual es muy improbable), el paso cae en `ROLE_ADMIN`. Si no hay admin activo, el paso queda en estado inválido. Mitigación: el `seed` de la base inicial garantiza al menos un admin activo.
- **Delegación accidentalmente eterna:** si un usuario configura un suplente y olvida desactivar el rango, su trabajo se redirige indefinidamente. Mitigación: la UI muestra el banner "delegando a X hasta YYYY-MM-DD" en el dashboard del usuario delegante.

## Notas

- Este ADR sólo describe la decisión. La construcción del `ApproverResolver` y las columnas de delegación son trabajo de la épica EP07 (Operación) del backlog corregido del cap. III.
- El `WorkflowEngine` actual (`Tracking.Application.Internal.OutboundServices.WorkflowEngine.resolveApprover`) ya tiene el punto de extensión: hoy hace `if (kind == AREA_POSITION) ...`; bastará reemplazar ese branch por una llamada al `ApproverResolver`.
