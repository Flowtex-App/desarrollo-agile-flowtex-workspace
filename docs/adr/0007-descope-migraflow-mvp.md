---
nr: 0007
title: Descope del módulo MigraFlow para el MVP académico
status: Aceptado
fecha: 2026-05-08
decisores: equipo FLOWTEX
---

# ADR-0007: Descope del módulo MigraFlow para el MVP académico

- **Estado**: Aceptado
- **Fecha**: 2026-05-08
- **Decisores**: equipo FLOWTEX

## Contexto

El planteamiento original (ver Capítulo I §1.1.2 del informe SI570 y `docs/chapters/01-introduccion.md`) describe FLOWTEX como una plataforma de tres módulos: FormBuilder, FlowEngine y MigraFlow.
MigraFlow está pensado como herramienta de migración paralela desde la herramienta SaaS NINTEX hacia FLOWTEX, con pruebas en paralelo y validación de equivalencia funcional (HU13).

Al cabo de la primera fase de implementación, el equipo confirmó dos hechos:

1. La construcción de MigraFlow requiere acceso a la instancia de NINTEX en el ambiente real de Claro Perú, contratos de API y datos productivos.
   Estos accesos no están disponibles en el contexto académico del ciclo 2026-01.
2. El alcance de evaluación de los cursos SI570 y SI438 prioriza la calidad del proceso de diseño, construcción y aprobación de formularios sobre la migración de la herramienta heredada.
   La sustitución de NINTEX es un objetivo de negocio del cliente, no un requisito de la entrega académica.

Mantener MigraFlow en el alcance del MVP académico genera artefactos (tablas, endpoints, vistas) que no tienen camino realista de validación, y compite por capacidad del equipo con funcionalidades del FormBuilder y FlowEngine que sí son verificables en QA.

## Decisión

El módulo MigraFlow se **retira del alcance del MVP académico** del ciclo 2026-01.
Las consecuencias concretas son:

- HU13 (pruebas paralelas durante la migración) queda registrada en el backlog con estado **fuera del alcance del ciclo actual**, no eliminada del producto.
- El UI del producto (`flowtex-web-app`) no expone tarjetas, dashboards ni stats que mencionen "Migración NINTEX" u "oleadas de migración".
- El backend (`flowtex-web-service`) no incorpora un bounded context `Migration`. Los datos de seed que mencionaban "MigraFlow" como sistema impactado se reemplazan por sistemas reales del entorno de Claro.
- La documentación académica (capítulos del SI570 y SI438) **conserva** la mención a MigraFlow como visión de producto a futuro, pero la sección de implementación reporta el descope con esta misma justificación.

## Alternativas consideradas

- **Implementar un MigraFlow simulado** (datos sintéticos, NINTEX mockeado): descartado porque produce un artefacto que no es verificable contra el sistema real, y porque la evaluación académica no premia código que no representa una operación realista del cliente.
- **Mantener MigraFlow en el roadmap pero no implementarlo**: descartado porque dejarlo "presente pero vacío" en la UI confunde a los revisores y al usuario sobre el estado real del producto.
- **Renegociar el alcance académico para incluir acceso a NINTEX**: descartado porque el cronograma del ciclo y la coordinación con el área de TI de Claro no lo permiten en plazo.

## Consecuencias

### Positivas
- El equipo concentra capacidad en FormBuilder y FlowEngine, los dos módulos efectivamente verificables en el ambiente QA.
- La UI deja de mostrar métricas y referencias que no tienen contraparte real, lo que mejora la coherencia entre lo presentado y lo que se puede demostrar.
- La justificación queda explícita: cuando el equipo retome MigraFlow, basta levantar este ADR como punto de partida y reactivar HU13.

### Negativas / costos
- El producto entregado al cierre del ciclo no permite ejecutar pruebas paralelas con NINTEX; la transición real al producto sigue siendo trabajo pendiente fuera del alcance académico.
- Los textos académicos del Capítulo I y del Resumen Ejecutivo siguen describiendo a MigraFlow como parte de la visión, lo que requiere una nota de descope visible en los capítulos de ejecución y conclusiones.

### Riesgos
- Que alguien lea los capítulos iniciales y espere ver MigraFlow funcional. Mitigación: mencionar este ADR en los capítulos 4, 5 y 7 cuando se presenten los entregables.
