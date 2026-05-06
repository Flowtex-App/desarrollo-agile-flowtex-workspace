# ADR-0005: Uso de Claude (asistente de IA) en el proyecto

- **Estado**: Aceptado
- **Fecha**: por completar al firmar
- **Decisores**: equipo FLOWTEX

## Contexto

El equipo usa Claude (modelo de Anthropic) como asistente durante el desarrollo del proyecto. La política sobre uso de IA difiere entre los dos cursos:

- En el curso documentado en este workspace (Calidad / Desarrollo Ágil, según corresponda), el uso de IA se documenta de forma transparente.
- En los repos de código (`flowtex-web-app`, `flowtex-web-service`), el aporte se evalúa como producción del equipo: no se incluyen atribuciones a IA en commits, comentarios ni co-author tags.

## Decisión

1. El uso de Claude para asistir en la redacción de los documentos académicos y en la organización del proyecto se documenta en `AI-USAGE.md` en este repositorio. Cualquier prompt o sesión con impacto material sobre la documentación se referencia ahí.
2. Las instrucciones persistentes que el equipo le da a Claude para trabajar sobre el código viven en `CLAUDE.md` dentro de cada repositorio de código, en `.gitignore` (archivo local, no se sube). El contenido de referencia de esos `CLAUDE.md` se preserva como ADRs o documentos en este workspace para trazabilidad.
3. Los repos de código no contienen ninguna referencia a IA: ni en commits, ni en co-author tags, ni en comentarios de archivos.
4. El equipo es responsable del contenido producido. Cualquier sugerencia de Claude pasa por revisión humana antes de incorporarse.

## Alternativas consideradas

- **No usar IA**: descartada; el asistente acelera el trabajo de redacción y refactor sin reemplazar la decisión humana.
- **Usar IA pero no documentarlo en ningún lado**: descartada porque incumple las reglas de transparencia del curso documentado en este workspace.
- **Documentar el uso también en los repos de código**: descartada porque el otro curso evalúa el código como producción del equipo bajo sus propias reglas; mezclar las trazas violaría la política de ese curso.

## Consecuencias

### Positivas
- Trazabilidad sobre cómo se usó la herramienta en lo académico.
- Separación limpia entre el workspace académico (con uso documentado) y el código entregable.
- El equipo conserva propiedad y responsabilidad sobre el resultado.

### Negativas / costos
- Disciplina adicional para mantener `AI-USAGE.md` actualizado.

### Riesgos
- Que el `CLAUDE.md` local de algún miembro se commitee accidentalmente. Mitigación: el archivo ya está en `.gitignore` de los repos de código desde el primer commit.
