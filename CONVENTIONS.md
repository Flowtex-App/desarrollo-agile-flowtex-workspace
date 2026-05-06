# Convenciones de redacción

Este documento fija el estilo y la mecánica de trabajo en este workspace.

## Estilo

- Idioma: español neutro. Evitar coloquialismos.
- Persona: tercera persona o impersonal ("se realiza", "el sistema", "el equipo"). Evitar primera persona.
- Tiempos verbales: presente para descripción del producto y arquitectura; pretérito para hechos del proceso.
- Vocabulario: definir términos técnicos la primera vez que aparecen. Mantener un glosario si los términos son muchos.
- Siglas: la primera vez se escriben completas con la sigla entre paréntesis: "Domain-Driven Design (DDD)".

## Markdown

- Una oración por línea cuando sea posible (ayuda a los diffs).
- Encabezados sin saltos: usar jerarquía progresiva (`#`, `##`, `###`), no saltar de `#` a `###`.
- Tablas para datos comparables; listas para enumeraciones; prosa para argumentación.
- Imágenes en `docs/assets/`, referenciadas con ruta relativa.
- Diagramas embebibles preferentemente como Mermaid en bloques de código; si requieren formato exacto, exportar a PNG/SVG y guardar en `docs/assets/`.

## Capítulos

- Un archivo `.md` por capítulo en `docs/chapters/`, numerado: `01-introduccion.md`, `02-...md`, etc.
- Cada capítulo arranca con `# Título del capítulo` (un solo H1 por archivo).
- El orden final del informe lo determina el script de build (`scripts/build-docx.sh`), que concatena los archivos en orden alfabético.

## ADRs

- Numerados secuencialmente: `0001-...md`, `0002-...md`, etc.
- Una decisión por archivo. Si una decisión reemplaza a otra, marcar el estado del ADR original como "Reemplazado por ADR-XXXX" y enlazar.
- No editar ADRs aceptados; crear uno nuevo que reemplace.

## Commits

- Conventional Commits: `docs:`, `chore:`, `fix:`, `feat:` (para nuevos capítulos o ADRs).
- Mensajes en presente imperativo: "agrega capítulo X", no "agregado capítulo X".
- Una decisión / cambio temático por commit.

## Branches y PRs

- Trunk-based: rama corta desde `main`, PR cortos, merge rápido.
- Naming: `docs/<capitulo-o-tema>` o `adr/<numero>-<slug>`.
- Cada PR de capítulo pasa por revisión de al menos un miembro del equipo distinto al autor.
