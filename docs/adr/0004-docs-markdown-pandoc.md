# ADR-0004: Documentación en Markdown convertida con Pandoc para entrega

- **Estado**: Aceptado
- **Fecha**: por completar al firmar
- **Decisores**: equipo FLOWTEX

## Contexto

Cada curso requiere un informe final como `.docx` o `.pdf`. Trabajar directamente sobre archivos `.docx` versionados en Git presenta problemas: los diffs son binarios (ilegibles), los merges entre ramas son frecuentemente conflictivos, y la iteración asistida sobre el contenido es lenta porque cada lectura/edición requiere parsear el binario.

## Decisión

Toda la documentación se redacta en **Markdown**, con un archivo por capítulo bajo `docs/chapters/`. La conversión al formato final de entrega (`.docx` con plantilla institucional, o `.pdf`) se hace con **Pandoc** mediante el script `scripts/build-docx.sh`. El archivo `.docx` resultante es un artefacto de salida y no se versiona en `main` (se publica en una release o se entrega directamente al docente).

## Alternativas consideradas

- **`.docx` versionado**: descartado por dolor de merge y diffs ilegibles.
- **Google Docs colaborativo**: descartado porque pierde la trazabilidad por commits y porque el equipo ya usa GitHub para el resto del workflow.
- **LaTeX**: descartado porque la curva es alta para el equipo y los cursos no exigen el formato.

## Consecuencias

### Positivas
- Diffs legibles, merges manejables, revisión por PR.
- Iteración asistida (con o sin IA) sobre archivos de texto plano.
- Un único formato de origen para ambos workspaces.

### Negativas / costos
- Configurar Pandoc y la plantilla institucional toma tiempo al inicio.
- Algunos elementos visuales avanzados (tablas complejas, diagramas embebidos con formato exacto) requieren ajustes post-conversión.

### Riesgos
- Que la plantilla institucional cambie cerca de la entrega. Mitigación: tener el script y la plantilla revisados al menos una semana antes de cada hito.
