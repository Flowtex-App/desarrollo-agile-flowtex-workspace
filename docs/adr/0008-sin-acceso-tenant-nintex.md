---
nr: 0008
title: FLOWTEX se construye sin acceso al tenant NINTEX de Claro
status: Aceptado
fecha: 2026-05-09
decisores: equipo FLOWTEX
---

# ADR-0008: FLOWTEX se construye sin acceso al tenant NINTEX de Claro

- **Estado**: Aceptado
- **Fecha**: 2026-05-09
- **Decisores**: equipo FLOWTEX
- **Relacionado con**: ADR-0007 (descope de MigraFlow)

## Contexto

El proyecto FLOWTEX se justifica en cap. I del informe SI570 como reemplazo del SaaS NINTEX que el área de Tecnología de Claro Perú usa hoy para gestión de formularios y flujos de aprobación.
La narrativa original asume implícitamente que el equipo puede operar contra el tenant productivo de NINTEX para tres cosas:

1. Inventariar los formularios y flujos vivos en NINTEX (entrada para MigraFlow).
2. Ejecutar la misma solicitud en NINTEX y en FLOWTEX en paralelo y comparar resultados (HU13 antigua).
3. Validar equivalencia funcional con datos reales antes de dar de baja cada formulario migrado.

Al cierre de la primera fase de implementación, ninguno de los tres supuestos se cumple:

- El cliente (área de Tecnología de Claro) no provee credenciales del tenant NINTEX al equipo Hitss para el ciclo académico 2026-01.
- No hay contrato vigente con el proveedor NINTEX que habilite acceso programático para terceros académicos.
- Los datos productivos de formularios en NINTEX están sujetos a clasificación interna de Claro y a regulación de OSIPTEL, lo que impide su uso fuera del ambiente de producción del cliente.

ADR-0007 ya retiró MigraFlow del MVP, pero la causa raíz quedó implícita: lo que falta no es tiempo del equipo, es **acceso operativo a la herramienta que se reemplaza**.
Mientras esa decisión no esté escrita, partes del backlog y del modelamiento siguen describiendo a FLOWTEX como una plataforma de migración asistida, lo que es engañoso para el lector y para los evaluadores académicos.

## Decisión

FLOWTEX se construye como **reemplazo from-scratch** de NINTEX, no como migración asistida desde NINTEX.

Las consecuencias operativas de esta decisión son:

- El equipo no consume APIs de NINTEX en ninguna parte del código del backend (`flowtex-web-service`) ni del frontend (`flowtex-web-app`).
- No existen artefactos de prueba paralela ni endpoints que esperen respuesta de NINTEX.
- El benchmark "FLOWTEX vs NINTEX" del cap. I y del cap. II del workspace de calidad es **cualitativo y documental**, basado en la documentación pública del producto NINTEX y en entrevistas con administradores TI de Claro que sí lo operan, no en mediciones programáticas hechas por el equipo.
- La prueba de aceptación del cliente no compara contra NINTEX: contrasta los criterios de aceptación gherkin de cada HU contra la ejecución real de FLOWTEX en QA.
- La eventual transición productiva (cuando el cliente decida discontinuar NINTEX) la hará el área de Tecnología de Claro con los datos exportados manualmente desde NINTEX, no FLOWTEX por su cuenta.

## Alternativas consideradas

- **Solicitar acceso al tenant a través de Hitss y aplazar el cronograma:** descartado porque el ciclo académico 2026-01 tiene fechas de entrega cerradas y el flujo de aprobación dentro de Claro para otorgar accesos no se completa en plazo.
- **Mockear NINTEX con un servicio simulado:** descartado porque produce un artefacto que no representa una operación realista. La evaluación académica privilegia código verificable contra el dominio del cliente, no contra mocks construidos por el propio equipo.
- **Construir FLOWTEX desde cero como reemplazo (la elegida):** preserva la totalidad del valor entregable —diseño, construcción, pruebas y aprobación de formularios y flujos— sin asumir compromisos sobre infraestructura del cliente que el equipo no controla.

## Consecuencias

### Positivas

- El alcance del proyecto coincide exactamente con lo que el equipo puede demostrar en QA. El demo del producto no depende de un tercero.
- Las decisiones derivadas (descope de MigraFlow en ADR-0007, notificaciones email-only en ADR-0009, escalamiento sobre IAM en ADR-0010) tienen una raíz común documentada.
- El backlog corregido del cap. III queda libre de HUs no verificables.

### Negativas / costos

- El producto entregado al cierre del ciclo no permite a Claro hacer cutover automático desde NINTEX. La transición real, cuando el cliente la priorice, requerirá un esfuerzo adicional de exportación manual y carga inicial de datos.
- La narrativa del cap. I de desarrollo y de partes del cap. II de calidad describe a FLOWTEX como solución integral incluyendo migración. Esa narrativa se conserva como visión de producto, pero el cap. III de desarrollo y la sección 2.1.2 de calidad clarifican que el alcance verificable es el reemplazo, no la migración.

### Riesgos

- **Lectura desalineada por parte de los evaluadores:** alguien que lea el cap. I sin leer este ADR puede esperar ver una herramienta de migración funcional. Mitigación: cap. III, sección 3.0 abre con una cita a ADR-0007 + ADR-0008.
- **Re-aparición de la narrativa de migración en sprints posteriores:** si más adelante alguien intenta retomar HU13 sin levantar este ADR, repite el mismo error. Mitigación: el ADR queda como guardia explícita y la decisión está fechada.

## Notas

- ADR-0007 documentó el descope de MigraFlow como módulo. ADR-0008 documenta la causa raíz de ese descope y extiende sus consecuencias al benchmark global del producto.
- ADR-0009 (notificaciones email-only) y ADR-0010 (escalamiento y delegación sobre IAM) son decisiones hermanas: las tres consolidan el alcance verificable del MVP académico contra los recursos reales del equipo.
