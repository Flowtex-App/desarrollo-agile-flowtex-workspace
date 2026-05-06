# AI-USAGE

Registro del uso de asistentes de IA (Claude, modelo de Anthropic) en la elaboración de la documentación de este workspace. Ver también [ADR-0005](docs/adr/0005-uso-de-claude.md).

## Política

- El equipo es responsable del contenido. Cualquier sugerencia de Claude pasa por revisión humana antes de incorporarse.
- El uso de Claude para asistir en la redacción se documenta acá cuando tiene impacto material.
- Las instrucciones persistentes que el equipo le da a Claude para trabajar sobre el código de los repos `flowtex-web-app` y `flowtex-web-service` viven en `CLAUDE.md` dentro de esos repos, en `.gitignore` (no se suben). Se preserva una copia de referencia en este workspace en `docs/claude-md-snapshots/` cuando se modifican.

## Sesiones registradas

> Una entrada por sesión con impacto material. Ejemplo de formato abajo. Borrar este aviso cuando se agregue la primera sesión real.

### YYYY-MM-DD — Título corto de la sesión

- **Capítulos / archivos afectados**: `docs/chapters/01-introduccion.md`, `docs/adr/0006-...md`
- **Objetivo de la sesión**: redactar primer borrador del capítulo de introducción / refactorizar la sección X / etc.
- **Resumen del prompt**: descripción breve de qué se le pidió a Claude (no es necesario el texto literal completo).
- **Qué se incorporó**: qué partes del output se aceptaron tras revisión.
- **Qué se descartó / modificó**: qué se reescribió o se rechazó.
- **Revisor humano**: nombre del miembro del equipo que validó.

## Snapshots de CLAUDE.md de los repos de código

Cuando se modifica el `CLAUDE.md` local de los repos de código, se guarda una copia en `docs/claude-md-snapshots/` con fecha. Esto preserva trazabilidad sin violar la regla de no commitear el archivo en los repos de código.
