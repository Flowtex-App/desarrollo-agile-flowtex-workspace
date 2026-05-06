# ADR-0002: Arquitectura hexagonal en el frontend

- **Estado**: Aceptado
- **Fecha**: por completar al firmar
- **Decisores**: equipo FLOWTEX

## Contexto

FLOWTEX requiere un frontend web mantenible, testeable y resiliente a cambios en el backend (cuyo stack todavía no está fijado). El equipo evaluó tres opciones de organización para el frontend.

## Decisión

El frontend usa **arquitectura hexagonal (ports & adapters) por bounded context**. Cada bounded context es una "slice" autocontenida con cuatro capas:

- `domain/` — modelo de negocio del frontend (aggregates, value objects) y ports (interfaces).
- `application/` — casos de uso que orquestan dominio + ports.
- `infrastructure/` — adapters concretos que implementan los ports (HTTP, localStorage, etc.).
- `interfaces/` — UI: pages, components, stores y composition root del contexto.

Regla de dependencia: `interfaces → application → domain ← infrastructure`. El domain no depende de nadie.

## Alternativas consideradas

- **Estructura por capa técnica** (`components/`, `services/`, `models/` a nivel raíz): descartada por escalar mal con el dominio y mezclar contextos.
- **Estructura por feature plana** (`auth/`, `bookings/`, etc., con todo dentro): la más común en proyectos de referencia, simple al inicio. Descartada porque no hace explícita la frontera entre lógica de negocio y detalles de transporte, lo que dificulta tests aislados y migración a otro backend.
- **Hexagonal por bounded context** (la elegida): introduce un poco más de ceremonia inicial pero hace explícitas las fronteras y permite testear use cases sin red, sin DOM y sin framework de UI.

## Consecuencias

### Positivas
- Tests unitarios rápidos para casos de uso (ports mockeados).
- Reemplazar el adapter HTTP no toca dominio ni UI. Útil dado que el backend aún no está fijado.
- Onboarding más predecible: cada contexto se lee por separado.

### Negativas / costos
- Más archivos por contexto que en una estructura por feature plana.
- El equipo necesita disciplina para no importar adapters directamente desde la UI.
- Curva de aprendizaje inicial.

### Riesgos
- Sobre-abstracción si se aplica el patrón a contextos muy pequeños. Mitigación: el patrón es obligatorio solo para contextos con lógica de negocio real; piezas puramente presentacionales pueden vivir en `shared/`.
