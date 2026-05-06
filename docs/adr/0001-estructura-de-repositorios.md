# ADR-0001: Estructura de cuatro repositorios para el proyecto FLOWTEX

- **Estado**: Aceptado
- **Fecha**: por completar al firmar
- **Decisores**: equipo FLOWTEX

## Contexto

El proyecto FLOWTEX se desarrolla en paralelo para dos cursos universitarios distintos. Cada curso pide su propio documento académico con capítulos diferentes, pero el código y el producto son los mismos. Además:

- Los avances de los documentos requieren iteración frecuente del equipo, y trabajar sobre archivos `.docx` en repositorio dificulta el merge y el control de versiones.
- Uno de los cursos requiere transparencia sobre el uso de asistentes de IA en el desarrollo de la documentación; el otro evalúa el código como producción del equipo.

## Decisión

El proyecto se organiza en **cuatro repositorios** en GitHub:

1. `flowtex-web-app` — código del frontend.
2. `flowtex-web-service` — código del backend.
3. `calidad-flowtex-workspace` — documentación del curso de Calidad (privado).
4. `desarrollo-agile-flowtex-workspace` — documentación del curso de Desarrollo Ágil (privado).

Los documentos se escriben en Markdown, un archivo por capítulo, y se exportan a `.docx`/`.pdf` con Pandoc al momento de cada entrega.

## Alternativas consideradas

- **Monorepo único** con todo (código + docs de ambos cursos): descartado porque mezcla la huella de IA en docs con código limpio, y porque los permisos de visibilidad serían distintos.
- **Dos repos (uno de código, uno de docs)**: descartado porque cada curso tiene capítulos diferentes y entregables distintos; mantenerlos en un solo repo de docs forzaría una estructura artificial.
- **Documentos en `.docx` versionados**: descartado por dolor de merge y por dificultad para iteración asistida.

## Consecuencias

### Positivas
- Separación clara entre producción de código y producción de documentos.
- Cada repo de workspace puede tener su propio reglamento sobre uso de IA.
- Markdown habilita revisión por PR, diffs legibles, y conversión automatizada al formato final.

### Negativas / costos
- Cuatro repos para mantener en lugar de uno o dos.
- Necesidad de mantener consistencia de información compartida entre los dos workspaces (descripción del proyecto, alcance, modelo).

### Riesgos
- Desincronización entre los dos workspaces. Mitigación: definir desde el inicio qué información es duplicada y revisarla en cada hito.
