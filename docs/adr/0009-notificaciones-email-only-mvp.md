---
nr: 0009
title: Notificaciones email-only en el MVP, sin Microsoft Teams
status: Aceptado
fecha: 2026-05-09
decisores: equipo FLOWTEX
---

# ADR-0009: Notificaciones email-only en el MVP, sin Microsoft Teams

- **Estado**: Aceptado
- **Fecha**: 2026-05-09
- **Decisores**: equipo FLOWTEX
- **Relacionado con**: ADR-0008 (sin acceso a infraestructura corporativa de Claro)

## Contexto

El backlog histórico del cap. I (HU09 antigua) y la tabla de "Ventaja competitiva" de cap. II del workspace de calidad describen FLOWTEX como una plataforma con notificaciones automáticas por **dos canales**: correo electrónico corporativo (SMTP) y mensajes en el canal de Microsoft Teams del aprobador.

La integración con Microsoft Teams en un entorno corporativo serio requiere una de las siguientes vías:

- **Webhooks entrantes en canales del tenant de Claro**, lo que implica acceso al tenant Microsoft 365 corporativo y permisos para crear y mantener conectores en cada canal de área. El equipo no tiene ese acceso (consistente con ADR-0008).
- **App registration en Azure AD del tenant de Claro** con Graph API, lo que demanda credenciales de admin del directorio corporativo. Tampoco está disponible para el equipo académico.
- **Tenant Microsoft 365 propio para desarrollo** con cuenta de prueba: requiere licenciamiento pagado para enviar a destinatarios fuera del tenant. Es un costo de integración que el proyecto académico no asume.

Mantener la promesa de "notificaciones por Teams" en el backlog del MVP genera dos riesgos: (1) escribir HUs cuyos criterios de aceptación no se pueden verificar, y (2) inflar el alcance contra una integración que el equipo nunca podrá demostrar.

## Decisión

El MVP envía notificaciones únicamente por **email corporativo (SMTP)**.

El bounded context `Notifications` se diseña con un **puerto de salida** `INotificationChannel` y un único adaptador implementado: `EmailNotificationChannel` (Spring Mail + servidor SMTP del proveedor que el equipo dé de alta para QA — Mailtrap, Brevo o un Gmail con app password sirven para el demo).

Cuando en el futuro el cliente provea acceso al tenant Microsoft 365 corporativo, basta agregar un adaptador `TeamsNotificationChannel` que implemente el mismo puerto. El dominio `Notifications` no cambia.

## Alternativas consideradas

- **Mockear el envío a Teams con un log local:** descartado porque produce HUs verdes en QA pero no demuestra la promesa de la HU. El usuario final no recibe nada.
- **Usar un canal Slack del equipo Hitss en lugar de Teams:** descartado porque el cliente que evalúa el sistema (administradores TI de Claro) no usa Slack. Cambia el canal pero no el problema.
- **Enviar notificaciones únicamente por email (la elegida):** SMTP es estándar, gratuito en el rango del MVP académico, los destinatarios no necesitan estar en ningún tenant específico, y cualquier QA puede leer la bandeja del usuario de prueba para verificar.

## Consecuencias

### Positivas

- HU-NT-01, HU-NT-02 y HU-NT-03 del backlog corregido (cap. III, sección 3.0) tienen criterios de aceptación verificables: "el correo llega a la bandeja del aprobador en menos de 2 minutos".
- La arquitectura no se acopla a Microsoft 365. El puerto `INotificationChannel` deja la puerta abierta a Teams, Slack, SMS o lo que el cliente priorice cuando dé acceso.
- El costo de operación del MVP en el ambiente del cliente queda en cero por encima del SMTP que ya tienen.

### Negativas / costos

- El producto entregado al cierre del ciclo no demuestra la integración Teams que el cap. I del informe sigue mencionando como visión.
- Los aprobadores que prefieran ser notificados en Teams en lugar de email perciben una experiencia más austera que la prometida originalmente. La narrativa del cap. I se mantiene como visión y el cap. III aclara el alcance verificable.

### Riesgos

- **Latencia o pérdida de correo en el SMTP de prueba:** mitigación: usar un proveedor con tracking (Mailtrap, Brevo) durante el demo y un servidor corporativo cuando el cliente lo provea.
- **Bandeja de spam:** los correos de QA pueden caer en spam. Mitigación: configurar SPF/DKIM mínimo en el dominio del proveedor y usar plantillas con asunto explícito ("FLOWTEX · Solicitud FTX-AAAA-NNNNN").

## Notas

- Este ADR no descarta Teams como roadmap. Lo desplaza a "Won't Have del MVP" hasta que el cliente provea infraestructura.
- El backlog corregido (cap. III, sección 3.0) lista esta limitación bajo MoSCoW Won't Have y la épica EP05 Notifications cubre sólo email.
