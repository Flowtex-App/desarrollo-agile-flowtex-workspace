# ADR-0006: Stack tecnológico del backend

- **Estado**: Aceptado
- **Fecha**: 2026-05-05
- **Decisores**: equipo FLOWTEX

## Contexto

La arquitectura DDD + CQRS definida en ADR-0003 es independiente del stack.
Con el inicio de la implementación del bounded context IAM, el equipo necesita fijar el lenguaje, framework, ORM, base de datos, mecanismo de autenticación y herramientas de migración y testing para que todos los miembros trabajen sobre la misma base.

## Decisión

| Componente | Elección |
|---|---|
| Lenguaje | Java 21 (LTS) |
| Framework | Spring Boot 3.3 |
| ORM | Spring Data JPA + Hibernate |
| Base de datos | MySQL 8 |
| Autenticación | Spring Security + JWT (jjwt 0.12) |
| Migraciones | Flyway |
| Build | Maven 3 |
| Testing | JUnit 5 + Mockito + Spring Boot Test |

## Alternativas consideradas

- **Node.js + NestJS**: descartado porque el equipo tiene mayor experiencia en Java y Spring; NestJS habría requerido curva de aprendizaje en un contexto académico con tiempo acotado.
- **Python + FastAPI**: descartado por la misma razón; el ecosistema de Spring para DDD (repositorios, eventos de dominio, transacciones declarativas) es más maduro.
- **Kotlin + Spring Boot**: considerado por la concisión del lenguaje; descartado para evitar mezclar lenguajes en el repo y porque Java 21 con records cubre los casos de uso (commands y queries como records).
- **Gradle en lugar de Maven**: ambos válidos; se eligió Maven por ser el más familiar dentro del equipo y por su integración más directa con las herramientas de la cátedra.
- **PostgreSQL en lugar de MySQL**: igualmente válido; se eligió MySQL 8 por ser el motor usado en los cursos previos del equipo.

## Consecuencias

### Positivas
- Spring Boot 3.3 con Java 21 habilita records nativos (ideal para Commands y Queries como records inmutables), virtual threads y pattern matching.
- Spring Data JPA reduce el boilerplate de repositorios manteniendo el control sobre queries complejas vía JPQL o Criteria.
- Flyway garantiza migraciones reproducibles y versionadas desde el primer commit.
- JUnit 5 + Mockito está integrado en Spring Boot Test sin dependencias adicionales.

### Negativas / costos
- Spring Boot tiene un tiempo de arranque mayor que alternativas más ligeras (Quarkus, Micronaut). No es relevante para el alcance académico.
- La verbosidad de Java respecto a Kotlin o Python implica más líneas de código para el mismo modelo de dominio.

### Riesgos
- Versión de Java: si el entorno de CI/CD o de despliegue no tiene Java 21, hay que ajustar. Mitigación: documentar el requisito en el README y en el pipeline.
