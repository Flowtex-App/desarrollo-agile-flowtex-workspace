# desarrollo-agile-flowtex-workspace

Workspace de documentación del proyecto **FLOWTEX** para el curso de **Desarrollo Ágil**.

> Repositorio **privado**. Contiene la documentación académica del curso, los ADRs del proyecto y la trazabilidad de uso de IA.

## Estructura

```
desarrollo-agile-flowtex-workspace/
├── docs/
│   ├── chapters/         # Un archivo .md por capítulo del informe
│   ├── adr/              # Architecture Decision Records numerados
│   ├── templates/        # Plantillas reutilizables (ADR, etc.)
│   └── assets/           # Imágenes, diagramas, etc.
├── scripts/
│   └── build-docx.sh     # Convierte los capítulos a un .docx único con Pandoc
├── AI-USAGE.md           # Trazabilidad del uso de Claude/IA en este repo
├── CONVENTIONS.md        # Convenciones de redacción y estilo
└── README.md
```

## Workflow

1. Cada capítulo del informe es un `.md` bajo `docs/chapters/`, numerado: `01-introduccion.md`, `02-marco-teorico.md`, etc.
2. Avance por PR: rama corta, revisión, merge a `main`.
3. Decisiones del proyecto se registran como ADRs en `docs/adr/`.
4. Antes de cada entrega, ejecutar `./scripts/build-docx.sh` para producir el `.docx` final aplicando la plantilla institucional.
5. Cualquier uso de IA con impacto material en la documentación se anota en `AI-USAGE.md`.

## Repos relacionados

- `flowtex-web-app` — código del frontend.
- `flowtex-web-service` — código del backend.
- `calidad-flowtex-workspace` — documentación del curso de Calidad.

## Stack del producto

Ver ADRs:
- [ADR-0002 — Arquitectura hexagonal en el frontend](docs/adr/0002-frontend-hexagonal.md)
- [ADR-0003 — DDD + CQRS por bounded context en el backend](docs/adr/0003-backend-ddd-cqrs.md)
