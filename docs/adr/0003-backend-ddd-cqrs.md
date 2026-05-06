# ADR-0003: Arquitectura DDD + CQRS por bounded context en el backend

- **Estado**: Aceptado
- **Fecha**: por completar al firmar
- **Decisores**: equipo FLOWTEX

## Contexto

El backend de FLOWTEX debe soportar un dominio que crecerá con varios contextos de negocio (mínimo: identidad/usuarios + el dominio principal del producto). Se prevé separar lectura y escritura para mantener el código testeable y permitir optimización de queries sin afectar la lógica de mutaciones. El stack concreto (lenguaje y framework) todavía no está decidido.

## Decisión

El backend se organiza por **bounded context** siguiendo Domain-Driven Design, con separación **CQRS** dentro de cada contexto. Cada bounded context tiene cuatro capas internas:

- `Application/` — `CommandServices`, `QueryServices`, `OutboundServices`. Orquestan dominio.
- `Domain/` — aggregates, value objects, events, commands, queries, repositorios e interfaces de servicios.
- `Infrastructure/` — implementaciones concretas (persistencia, hashing, tokens, etc.).
- `Interfaces/` — controladores REST + Anti-Corruption Layer (ACL) para otros bounded contexts.

Reglas inviolables:
- Domain no depende de Infrastructure ni de Interfaces ni de framework de I/O.
- Commands devuelven acuses; queries no mutan estado y no pasan por aggregates.
- Cero referencias cruzadas entre bounded contexts: la comunicación es vía ACL (`Interfaces/ACL/<Otro>ContextFacade`).

## Alternativas consideradas

- **Arquitectura en N capas tradicional** (controllers/services/repositories sin bounded contexts): descartada porque no aísla los contextos y permite que un cambio en un módulo derrame en otros.
- **DDD sin CQRS**: descartada porque mezcla en un único servicio operaciones de escritura (que necesitan validar invariantes a través del aggregate) y operaciones de lectura (que se beneficiarían de proyecciones desnormalizadas).
- **Microservicios separados por bounded context desde el inicio**: descartada por sobreingeniería para el alcance del proyecto académico. La estructura por contexto en monolito permite extraer un servicio cuando haga falta.

## Consecuencias

### Positivas
- Cada bounded context se puede testear, modificar y razonar en aislamiento.
- CQRS deja la puerta abierta a optimizar queries (vistas materializadas, read models) sin tocar la lógica de comandos.
- La estructura es independiente del stack: sirve igual para .NET, Java/Spring, Node/NestJS, Python/FastAPI o Go.

### Negativas / costos
- Más archivos y carpetas que un enfoque en N capas.
- Riesgo de over-engineering si un contexto es trivial. Mitigación: aplicar la estructura completa solo cuando hay lógica de negocio real; contextos puramente CRUD pueden simplificar Application.

### Riesgos
- Equipo sin experiencia previa en DDD/CQRS. Mitigación: la primera implementación (IAM) sirve como referencia y plantilla.
