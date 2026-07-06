# Balotario SI570 con respuestas modelo: proyecto FLOWTEX

Documento de apoyo para la defensa oral del curso SI570 (Desarrollo Ágil). Cada respuesta está fundamentada en los capítulos 01 a 07 del informe de FLOWTEX (plataforma web inhouse de Hitss Perú que reemplaza a NINTEX en el Área de Tecnología de Claro Perú para gestionar formularios y flujos de aprobación). Todas las respuestas están respaldadas por el documento, con cita de la sección correspondiente.

## Capítulo I: Introducción, valor y manifiesto ágil

**1. ¿Quién es tu usuario final y quién es tu cliente/patrocinador? Explica si son la misma persona o si tienen necesidades diferentes.**

No son la misma persona. Mis usuarios finales son los administradores TI de Claro (que crean formularios en FormBuilder), los solicitantes de todas las áreas y los aprobadores designados; mi cliente y patrocinador es el Área de Tecnología de Claro Perú, que define los requerimientos, valida los entregables y financia el desarrollo a través de Hitss, con la Gerencia de TI de América Móvil como cliente estratégico. El usuario busca autonomía y rapidez operativa, mientras que el cliente busca reducir costos de licenciamiento, soberanía de datos y cumplimiento regulatorio. Por eso el backlog se prioriza atendiendo ambos intereses a la vez.

**2. ¿Qué problema real resuelve tu proyecto y cómo se relaciona con un ODS específico?**

El problema real es la dependencia de NINTEX, que hace que crear un formulario tome de 3 a 6 semanas, cuesta más de S/. 400,000 anuales en licencias, no ofrece versionamiento ni historial auditable y aloja los datos fuera del control de Claro. Flowtex reduce ese tiempo a 2 días laborales, recorta el costo en más del 60% y devuelve la soberanía de datos y la trazabilidad. El informe conecta esto de forma directa con la Agenda 2030: el ODS principal es el 9 (Industria, Innovación e Infraestructura, metas 9.4 y 9.5), porque reemplaza una dependencia SaaS externa por infraestructura digital propia y resiliente bajo soberanía de datos de Claro. Como ODS secundarios aparecen el 12 (Producción y consumo responsables, meta 12.5) por eliminar papel, correos manuales y reprocesos, y el 8 (Trabajo decente, meta 8.2) por liberar al personal de tareas manuales repetitivas hacia trabajo de mayor valor (sección 1.3.4).

**3. ¿Qué valor espera recibir el usuario y qué valor espera recibir el cliente? Diferencia valor funcional, económico, social y de aprendizaje.**

El usuario espera valor funcional (crear formularios en días sin depender de un proveedor) y social (recuperar autonomía y credibilidad ante las áreas internas). El cliente espera valor económico (reducción de más del 60% del costo de licencias y ROI positivo en el primer año) y de cumplimiento (trazabilidad y soberanía de datos ante OSIPTEL). El valor de aprendizaje lo obtiene el equipo Hitss, que valida con cada iteración si los administradores pueden operar de forma autónoma, ajustando el backlog según lo aprendido.

**4. ¿Cómo conectas tu proyecto con los cuatro valores del Manifiesto Ágil?**

Individuos e interacciones: el PO sostiene comunicación directa con los administradores de Claro en lugar de tickets formales que reintroducirían la demora que buscamos eliminar. Software funcionando: cada sprint entrega funcionalidades verificables en el ambiente de QA. Colaboración con el cliente: hay sesiones semanales de ajuste del backlog según el avance de la migración. Responder al cambio: el tablero Kanban se replanifica cuando MigraFlow o las pruebas revelan casos no previstos (sección 1.10).

**5. Elige tres principios del Manifiesto Ágil y explica cómo se evidencian en tu proyecto y en tu MVP.**

Principio 1 (entrega temprana y continua de valor): el MVP entrega primero FormBuilder, luego FlowEngine, de modo que Claro empieza a crear formularios desde el primer incremento. Principio 7 (el software funcionando es la medida de progreso): el avance se mide en Historias de Usuario desplegadas en QA y validadas por el PO, no en documentos. Principio 8 (desarrollo sostenible): los WIP limits del tablero evitan la sobrecarga del equipo de cinco personas y mantienen un ritmo predecible de tres HUs por semana.

**6. ¿Cuál es tu definición de valor ágil para este proyecto y cómo demostrarás que ese valor fue entregado?**

Valor ágil en Flowtex es software funcionando en manos del usuario que resuelve un dolor real del proceso de Claro, entregado de forma incremental y verificable. Lo demuestro con evidencia concreta: HUs desplegadas en QA y validadas por el PO, y con KPIs de fórmula explícita como el tiempo promedio de creación de formulario (meta menor o igual a 2 días) y la disponibilidad del sistema (meta mayor o igual a 99.5%). Si el software está desplegado, validado y los KPIs mejoran respecto a NINTEX, el valor fue entregado.

**7. ¿Cómo priorizaste tu backlog usando MoSCoW? Justifica al menos dos elementos Must, dos Should, un Could y un Won't.**

Usé MoSCoW por su simplicidad y claridad para conversar con Claro. Must: HU01 (tipos de campo, sin ellos no se construye ningún formulario) y HU09 (notificaciones email y Teams, sin ellas los aprobadores no sabrían que tienen pendientes). Should: HU07 (aprobación por mayoría, cubre el 10% de casos de comité) y HU10 (escalamiento automático, el admin puede escalar manualmente en el MVP). Could: HU08 (delegación automática, gestionable a mano al inicio). Won't: dashboards de BI e integración con ERP legacy, que dan valor a largo plazo pero no reemplazan a NINTEX en el MVP (sección 1.8).

**8. Si tuvieras que escalar tu producto con SAFe, ¿qué elementos de tu backlog pasarían a épicas, features e historias de usuario?**

Las épicas serían los bounded contexts: EP01 IAM, EP02 FormBuilder, EP03 Workflow, EP04 Tracking, más Notifications y Reporting. Las features serían capacidades como "editor drag-and-drop", "aprobación secuencial/paralela/mayoría" o "timeline auditado". Las historias de usuario son las unidades ejecutables (HU-FB-01, HU-WF-03, HU-TR-07, etc.). Para desempatar entre historias de una misma categoría MoSCoW, SAFe aplicaría WSJF (costo de retraso dividido entre tamaño del trabajo), que el informe reserva como criterio de desempate cuantitativo (sección 1.8.4).

**9. Explica la lógica de tu backlog: épicas, historias de usuario, criterios de aceptación, prioridad, responsable y estado.**

Cada épica corresponde a un bounded context del producto; cada épica se descompone en Historias de Usuario con formato "Como rol, quiero funcionalidad, para beneficio". Cada HU lleva criterios de aceptación en gherkin (Given-When-Then) con al menos dos escenarios, prioridad MoSCoW, estimación en puntos, responsable asignado, trazabilidad a los archivos del repo y un estado que avanza por las columnas del tablero (Backlog, Por Hacer, En Desarrollo, En Revisión, Testing, Hecho). Esta lógica está detallada en la tarjeta de trabajo del capítulo III (sección 3.2).

**10. ¿Qué productos y servicios entrega tu proyecto? Relaciónalos con los requisitos del usuario y del cliente.**

Flowtex entrega tres módulos: FormBuilder (creación visual de formularios, responde al requisito de crear en días sin código), FlowEngine (motor de flujos con rutas secuenciales, paralelas y por mayoría, delegación y escalamiento, responde a la automatización de aprobaciones) y MigraFlow (migración controlada desde NINTEX, en la visión del cap. I). El servicio de Hitss es el desarrollo y mantenimiento inhouse. Esto satisface al usuario con autonomía y trazabilidad, y al cliente con reducción de costo y soberanía de datos.

**11. ¿Cuál es tu objetivo SMART? Justifica que sea específico, medible, alcanzable, relevante y limitado en el tiempo.**

El objetivo principal es reducir el tiempo promedio de creación y publicación de formularios de 21 días calendario a 2 días laborales para el 100% de las solicitudes. Es específico (creación de formularios), medible (el sistema registra la fecha de apertura en FormBuilder hasta la publicación), alcanzable (el drag-and-drop y la eliminación del proveedor externo lo hacen viable con el stack definido), relevante (es el principal dolor del cliente y el argumento de reemplazo de NINTEX) y limitado en el tiempo (verificado en producción antes del cierre del ciclo 2026-10). Está en la sección 1.7.

**12. ¿Cómo verificarás que tu objetivo SMART realmente produce valor y no solo actividad?**

Porque el objetivo se mide con software funcionando y no con esfuerzo: el sistema registra automáticamente el tiempo real de creación por formulario, y ese dato se contrasta contra la línea base de NINTEX. Complemento la métrica de tiempo con KPIs de resultado como la tasa de creación exitosa (mayor o igual a 95%) y la usabilidad (80% de administradores creando un formulario en menos de 30 minutos sin capacitación). Si el tiempo baja pero los formularios no se publican con éxito ni los usuarios los adoptan, sería actividad sin valor, y por eso mido las tres cosas juntas.

**13. Convierte los 12 principios del Manifiesto Ágil en herramientas concretas aplicadas a tu proyecto.**

Cada principio se traduce en una herramienta concreta: entrega temprana en incrementos por módulo; requisitos cambiantes gracias a la arquitectura DDD + CQRS que agrega flujos sin reescribir el core; entregas frecuentes con el pipeline CI/CD a QA; negocio y desarrollo juntos con el daily standup; individuos motivados con autonomía técnica plena; conversación cara a cara en las Reviews de Teams con pantalla compartida; software como medida con Throughput de HUs desplegadas; ritmo sostenible con WIP limits; excelencia técnica con SonarQube y code review; simplicidad con MoSCoW; equipos autoorganizados con decisiones por consenso en ADRs; y reflexión regular con la retrospectiva quincenal (sección 1.10.2).

**14. Si tu cliente cambia una necesidad importante a mitad del proyecto, ¿qué principio ágil usarías para responder y qué decisión tomarías?**

Aplicaría el Principio 2 (bienvenidos los requisitos cambiantes, incluso en etapas tardías). La decisión concreta es que el PO documenta el cambio como una HU nueva o una modificación formal, evalúa su impacto en el WIP, el Lead Time y el throughput de la semana, y lo repriorioriza con MoSCoW y clases de servicio (PriorityFlow), de modo que una necesidad urgente puede adelantar a tarjetas estándar sin replanificar todo el tablero (secciones 4.4 y 3.2).

## Capítulo II: Inicio, ideación, MVP y Lean Startup

**15. ¿Qué método elegiste para generar ideas: brainstorming, design thinking, Lean Startup, Lean Inception u otro? Justifica por qué es adecuado para tu problema.**

Combiné varios en un orden deliberado. Empecé con Design Thinking para entender el dolor real del administrador de TI antes de proponer solución, luego Lean Startup para construir y validar el primer MVP con la mínima inversión, y finalmente Lean Inception (taller de cinco días de Paulo Caroli) para alinear la visión y planificar la siguiente iteración. Es adecuado porque el problema es del dominio complejo según Cynefin: no se conoce de antemano qué necesitará cada área, así que conviene experimentar y validar antes que especificar todo por adelantado (secciones 2.1, 2.5 y 1.11).

**16. Describe cómo aplicaste empatizar, definir, idear, prototipar y probar en tu solución.**

Empatizar: entrevisté al administrador TI con la técnica SPIN, descubriendo la demora de 3 a 6 semanas. Definir: construí el User Persona Ricardo Alvarado, su mapa de empatía y el POV. Idear: usé brainwriting, round robin y free for all, con dot voting para priorizar, más el wireframe de FormBuilder y el Journey Map. Prototipar: construí un FlowEngine de tres pasos con reglas condicionales. Probar: ejecuté un plan de cinco tareas con administradores de Claro, donde el rollback falló y se sumó al backlog como mejora prioritaria (sección 2.1).

**17. ¿Cuál es la hipótesis principal de valor de tu proyecto?**

La hipótesis central es que los administradores de TI de Claro pueden crear formularios funcionales de forma autónoma, en menos de 2 días y sin capacitación previa, usando el FormBuilder. Si esa hipótesis se valida, Flowtex reemplaza a NINTEX eliminando la dependencia del proveedor externo. Es la hipótesis de mayor riesgo, por eso el MVP se enfoca en probarla primero (sección 2.5).

**18. ¿Qué evidencia inicial tienes de que el problema existe y de que el usuario necesita tu solución?**

La evidencia proviene de la entrevista SPIN al administrador de TI, que reportó entre 2 y 3 solicitudes semanales de formularios y una demora de 3 a 6 semanas por cada cambio en NINTEX, con áreas como RRHH y Legal bloqueadas durante días. A eso se suma el costo documentado de más de S/. 400,000 anuales en licencias y la ausencia de versionamiento y trazabilidad. El mapa de empatía y el journey map confirmaron que el dolor es recurrente y crítico para el usuario (secciones 2.1 y 1.3).

**19. ¿Qué estás haciendo para actuar como líder facilitador del equipo y no como jefe controlador?**

El equipo está en la fase Norming de Tuckman, que el curso denomina "Liberar de mando y control": el Scrum Master ya retiró la supervisión directa y dejó que las normas acordadas gobiernen el trabajo. En la práctica, las convenciones de código, el tablero con WIP limits y las cadencias están internalizadas, y las decisiones técnicas se toman por consenso y se documentan en ADRs. El líder ahora delega, remueve impedimentos en menos de 24 horas y facilita las retrospectivas, en lugar de dirigir cada decisión (secciones 2.3 y 4.1).

**20. ¿Qué práctica de Lean Startup aplicaste: construir-medir-aprender, hipótesis, experimento, pivote o aprendizaje validado?**

Apliqué el ciclo Build-Measure-Learn formulado por Eric Ries. Construir: el MVP con FormBuilder de cinco campos más FlowEngine secuencial de hasta dos niveles. Medir: tres KPIs (tiempo de creación, tasa de aprobación dentro del SLA y NPS inicial de los administradores). Aprender: validar la hipótesis de si los administradores crean formularios en menos de 2 días sin capacitación. El objetivo es el aprendizaje validado antes de comprometer recursos en la construcción completa (sección 2.5).

**21. ¿Cuál es tu MVP y qué funcionalidad mínima debe tener para probar valor?**

El MVP es FormBuilder básico (cinco tipos de campo, drag-and-drop, versionamiento automático y ticket de seguimiento) más FlowEngine básico (flujo secuencial de hasta dos niveles, notificaciones por correo en menos de un minuto, historial permanente y seguimiento por ticket). Esa es la funcionalidad mínima porque reproduce el núcleo de NINTEX y permite probar la hipótesis de autonomía del administrador. Quedan fuera delegación, mayoría, escalamiento, dashboards y migración paralela (sección 2.6).

**22. ¿Qué parte de tu MVP usa IA y por qué esa IA aumenta valor para el usuario?**

La IA está en las sugerencias de campos por lenguaje natural (HU-FB-05): el diseñador describe el propósito del formulario y recibe al menos cinco campos sugeridos con su tipo recomendado y una justificación corta. Aumenta valor porque acelera el diseño inicial cuando se construye un formulario desde cero, reduciendo el tiempo del administrador. La IA propone, pero el usuario decide qué campos acepta, por lo que actúa como asistente y no como reemplazo (sección 3.0.2, HU-FB-05).

**23. ¿Qué parte de tu MVP no debería hacerse todavía porque no es necesaria para validar valor?**

No se deben construir todavía las notificaciones por Microsoft Teams, el escalamiento programado por SLA, la exportación a PDF, la migración paralela contra NINTEX (MigraFlow), los dashboards de BI ejecutivos y la integración con ERP legacy. Están marcadas como Won't Have del MVP y respaldadas por los ADR 0007, 0008, 0009 y 0010. Construirlas antes consumiría capacidad sin acercar la validación de la hipótesis central (secciones 3.0.3 y 2.6).

**24. ¿Qué tres KPI usarás para medir si tu MVP crece o mejora?**

Uso el tiempo promedio de creación de formulario (meta menor o igual a 2 días laborales), la tasa de aprobación dentro del SLA (meta mayor o igual a 90%) y el NPS inicial de los administradores de TI de Claro. En el MVP también se apoya la tasa de creación exitosa (mayor o igual a 95%). Los tres reflejan la experiencia real del usuario, no indicadores técnicos desvinculados (secciones 2.5 y 2.7).

**25. Para cada KPI, indica fórmula, fuente de datos, frecuencia de medición y decisión que permite tomar.**

Tiempo promedio de creación: suma de (fecha de publicación menos fecha de solicitud) dividida entre el número de formularios; fuente, los registros del propio sistema; frecuencia, por formulario creado; decide si el objetivo de 2 días se cumple o si hay que simplificar el editor. Tasa de aprobación dentro del SLA: solicitudes aprobadas antes del vencimiento entre total de solicitudes por cien; fuente, FlowEngine; frecuencia, semanal/mensual; decide si ajustar tiempos o reforzar escalamiento. NPS inicial: encuesta a administradores; frecuencia, al cierre de la prueba de usabilidad; decide si perseverar o rediseñar (sección 2.7).

**26. ¿Qué experimento harás con usuarios reales para validar tu MVP?**

Ejecutaré una prueba de usabilidad supervisada con al menos tres administradores de TI de Claro, con un protocolo de cinco tareas sobre el prototipo (crear formulario, configurar validaciones, ejecutar flujo secuencial, aplicar regla condicional y hacer rollback). Mido el tiempo de completitud, el porcentaje de éxito y el NPS. El criterio de validación es que el 80% cree un formulario de cuatro campos en menos de 30 minutos sin capacitación previa (secciones 2.1 y 2.6).

**27. ¿Qué resultado te haría perseverar, pivotar o detener el proyecto?**

Perseverar si el 80% de administradores logra crear el formulario en menos de 30 minutos y el NPS es mayor o igual a 7 sobre 10. Pivotar si los usuarios completan la tarea pero con fricción alta (por ejemplo la regla condicional que no encontraron en el prototipo), lo que llevaría a rediseñar esa parte con un asistente guiado. Detener o replantear si no logran crear formularios de forma autónoma ni siquiera con ajustes, porque caería la hipótesis central del reemplazo de NINTEX (secciones 2.6 y 2.1).

**28. Justifica los pasos de evaluación de tu etapa de inicio: problema, usuario, hipótesis, prototipo, prueba y aprendizaje.**

Cada paso reduce un riesgo antes del siguiente: primero diagnostiqué el problema con SPIN para no construir sobre suposiciones; definí al usuario con el User Persona y el POV para orientar el diseño; enuncié la hipótesis de valor para hacerla falsable; construí un prototipo mínimo del FlowEngine para probarla barato; ejecuté la prueba de cinco tareas con usuarios reales; y capturé el aprendizaje ajustando el backlog (el rollback subió a alta prioridad). Esta secuencia es la del dominio complejo de Cynefin: experimentar, sentir, responder (secciones 2.9 y 1.11).

## Capítulo III: Planificación y organización

**29. ¿Cómo formaste tu equipo y qué roles tiene cada integrante?**

El equipo es de cinco integrantes de Hitss con roles complementarios: Christopher (Product Owner y Backend, define y prioriza el backlog), Angello (Frontend y UX/UI), Milagros (Data Scientist, métricas y análisis), Jose (Backend Developer) y Omar (Scrum Master, facilita ceremonias y gestiona el tablero). El equipo se formó en la sesión de kick-off con el Teams Canvas, definiendo roles, objetivo y normas de trabajo. Las decisiones de arquitectura se adoptaron por consenso técnico (secciones 1.2 y 2.3).

**30. Según Tuckman, ¿en qué etapa está tu equipo: forming, storming, norming, performing o adjourning? Justifica con evidencias.**

El equipo está en Norming, que el curso denomina "Liberar de mando y control". La evidencia es que las convenciones de código (Conventional Commits, naming DDD), el tablero con WIP limits y las cadencias ya están internalizadas, y las revisiones de código pasaron de correctivas a colaborativas. La señal concreta del tránsito fue completar la primera HU sin bloqueadores ni intervención directiva (HU01, tipos de campo). Performing ("Empoderar"), la autoorganización plena, es el estado objetivo aún en consolidación (secciones 2.3 y 4.1).

**31. ¿Qué acciones tomarás para mover al equipo hacia alto desempeño?**

Consolidar la autonomía distribuyendo conocimiento con pair programming rotativo y ADRs, para eliminar dependencias individuales como la concentración del modelo de datos en el PO. Reforzar la disciplina de flujo con WIP limits y "stop starting, start finishing" para que el equipo detecte y resuelva sus propios cuellos de botella (por ejemplo bajar el WIP de 4 a 3 tras un embudo en Testing). Rotar el rol de facilitador en las retrospectivas y dejar que el equipo proponga y ejecute mejoras de proceso por su cuenta, con el Scrum Master solo removiendo impedimentos (secciones 4.1 y 6.4).

**32. ¿Cómo diseñaste tu tablero Kanban y cuáles son sus columnas principales?**

Diseñé el tablero con STATIK, partiendo de la demanda del cliente hacia la capacidad del equipo. Tiene seis columnas: Backlog, Por Hacer, En Desarrollo, En Revisión, Testing y Hecho, y seis swim lanes, una por bounded context (IAM, FormBuilder, Workflow, Tracking, Notifications, Reporting). Cada columna y swim lane tiene un WIP limit visible: 2 en la mayoría de swim lanes y 1 en Notifications y Reporting, porque hay más flujos en paralelo y el equipo es de cinco personas (sección 3.1).

**33. ¿Qué representa cada columna de tu tablero y qué política de entrada y salida tiene?**

Backlog contiene las HUs priorizadas por MoSCoW; Por Hacer, las seleccionadas para el período (WIP 5); En Desarrollo, la HU en construcción; En Revisión, el code review obligatorio (máximo 4 horas, WIP 2); Testing, las pruebas de aceptación (WIP 2); y Hecho, la HU verificada. Las políticas explícitas son: una HU no entra a "En Desarrollo" sin criterios de aceptación gherkin completos (Definition of Ready), y no pasa a "Hecho" sin estar desplegada en QA y validada por el PO (Definition of Done). Si "En Revisión" está lleno, quien termina una HU debe revisar una pendiente antes de iniciar otra (secciones 3.1 y 4.4).

**34. Explica los 8 pasos de STATIK Kanban aplicados a tu proyecto.**

El informe aplica STATIK como System Thinking Approach to Introducing Kanban a través de siete preguntas: por qué usamos Kanban (visualizar el flujo de los módulos con transparencia hacia Claro); fuentes de insatisfacción (demoras en FlowEngine, defectos en MigraFlow); demandas (HUs por módulo, bugs y chores); capacidades (cinco desarrolladores, throughput objetivo de 3 HUs/semana); tipos de trabajo (Features, Bugs, Chores, Spikes); clases de servicio (Urgente, Fecha fija, Estándar, Intangible); y el diseño del sistema (tablero con columnas, swim lanes y WIP limits). El octavo paso es la operación evolutiva: implementar el sistema y refinarlo con retroalimentación en cada retrospectiva (sección 4.2).

**35. ¿Cuál es la demanda que llega a tu sistema de trabajo y qué tipos de trabajo maneja tu equipo?**

La demanda son las Historias de Usuario de los bounded contexts (IAM, FormBuilder, Workflow, Tracking, Notifications, Reporting), más los bugs y chores que emergen durante el desarrollo, y las solicitudes de cambio del cliente Claro. Los tipos de trabajo son cuatro: Features, Bugs, Chores y Spikes. Las clases de servicio (Urgente, Fecha fija, Estándar, Intangible) gestionan la prioridad dinámica de cada tarjeta (secciones 4.2 y 3.2).

**36. ¿Dónde están los posibles cuellos de botella en tu flujo?**

Los cuellos de botella se dan en la columna En Revisión (cuando el equipo inicia HUs nuevas antes de completar las revisiones pendientes, generando espera) y en Testing (defectos que devuelven trabajo a Desarrollo). En los módulos, FlowEngine acumula inventario por la complejidad de las reglas condicionales y MigraFlow sufre defectos costosos por el riesgo de la migración. El CFD hace visible el ensanchamiento de una banda como señal temprana del embudo (secciones 5.2, 5.5 y 4.3).

**37. Describe los pasos de tu propia planificación: visión, roadmap, backlog, releases, iteraciones, tablero y métricas.**

La planificación sigue cinco pasos: diseñar el sistema de trabajo (columnas, WIP limits, políticas y Definition of Done); construir y priorizar el backlog con MoSCoW e ImpactPriority; establecer las cadencias fijas (Daily, Replenishment, Review y Retrospectiva); asignar clases de servicio a cada HU; y calcular el WIP óptimo con la Ley de Little (Lead Time = WIP / Throughput). La visión viene de FlowVision, el roadmap y los releases se secuencian por incrementos de módulo, y las métricas de flujo (Lead Time, Cycle Time, Throughput) cierran el ciclo (sección 3.5).

**38. ¿Cómo estimaste tu trabajo: t-shirt sizing, story points, planning poker, afinidad u otro método?**

Estimé con t-shirt sizing mapeado a puntos de historia: S = 1, M = 3, L = 5 y XL = 8, según el campo Estimación de la tarjeta de trabajo. Esta combinación mantiene la conversación rápida de las tallas y la comparabilidad numérica de los puntos. Además, si el diseño técnico de una HU supera las 2 horas, se declara Spike y se planifica como investigación separada (secciones 3.2 y 4.5).

**39. ¿Qué KPI de desempeño usarás para saber si el equipo entrega valor?**

Uso el Throughput semanal (HUs completadas y desplegadas por semana, meta mayor o igual a 3), que mide valor real entregado y no HUs iniciadas. Lo complemento con la tasa de aprobación dentro del SLA del cliente y con el software funcionando validado por el PO como criterio de progreso. El principio de fondo es el Principio 7: el software funcionando es la medida principal de progreso (secciones 3.3 y 5.9).

**40. ¿Qué KPI de eficiencia usarás para saber si el flujo mejora?**

Uso el Cycle Time (meta menor o igual a 3 días), el Lead Time (meta menor o igual a 5 días para Feature estándar), el WIP actual (meta menor o igual a 8) y la tasa de re-trabajo (meta menor o igual a 10%). Estas métricas revelan la eficiencia interna del flujo: si el Cycle Time o el re-trabajo suben, el flujo se degrada aunque el equipo esté ocupado. La tasa de bloqueo (meta menor o igual a 5%) detecta impedimentos sistémicos (sección 3.3).

**41. Si tu equipo tiene muchas tareas empezadas y pocas terminadas, ¿qué decisión tomarías sobre el WIP?**

Aplicaría la regla "stop starting, start finishing": nadie inicia una HU nueva mientras haya trabajo en revisión o testing esperando atención. Reduciría el WIP limit de la columna cuello de botella, tal como el informe muestra en FormBuilder al bajar el WIP de 6 a 3, lo que por la Ley de Little baja el Lead Time de 10 a 5 días sin sumar personas. La solución no es más capacidad sino disciplina de flujo (secciones 5.2, 5.3 y 5.4).

## Capítulo IV: Ejecución o desarrollo

**42. Explica los pasos genéricos para ejecutar tu proyecto usando Kanban.**

El ciclo de una HU tiene cinco pasos: diseño técnico por HU (aggregate, commands, queries y endpoints con DDD + CQRS, máximo 2 horas); desarrollo guiado por tests (TDD, primero los tests unitarios y de integración); code review con checklist arquitectónico (máximo 4 horas); deploy a QA y validación del PO (máximo 24 horas); y actualización del tablero, registrando la fecha de Done y comunicando el throughput en el daily. La tarjeta avanza por las columnas respetando los WIP limits (secciones 4.5 y 4.6).

**43. Explica cómo aplicarías STATIK para rediseñar tu sistema de trabajo si el flujo no funciona.**

Volvería a recorrer las preguntas de STATIK desde la demanda externa: revisaría las fuentes de insatisfacción (dónde se acumulan las HUs), recalcularía las demandas y capacidades reales con el throughput medido, revisaría los tipos de trabajo y las clases de servicio, y rediseñaría el tablero (columnas, swim lanes y WIP limits). Por ejemplo, si MigraFlow o FlowEngine concentran defectos, ajustaría su WIP a 1 y agregaría un playbook o capacitación antes de rediseñar el flujo. STATIK diseña de afuera hacia adentro, no impone un proceso genérico (secciones 4.2 y 5.3).

**44. Explica cómo aplicarías Scrumban combinando eventos de Scrum con flujo Kanban.**

El proyecto adoptó STATIK Kanban en lugar de Scrumban, pero la lógica Scrumban ya está presente: el flujo se gestiona con Kanban (columnas, WIP limits, pull) mientras se mantienen cadencias de sabor Scrum (Replenishment como planning ligero los lunes, Review semanal los viernes y retrospectiva quincenal). Scrumban tomaría los eventos de Scrum para dar ritmo y el tablero Kanban para gestionar el trabajo sin sprints de alcance fijo, útil cuando la demanda es variable. La diferencia con Scrumban es que STATIK parte de la demanda del cliente y no de la estructura interna del equipo (secciones 4.2 y 3.1).

**45. ¿Qué reuniones o cadencias usará tu equipo y para qué sirve cada una?**

Cuatro cadencias fijas: el Daily standup diario de 15 minutos (sincronización y bloqueadores); el Replenishment Meeting los lunes de 30 minutos (el PO reabastece el backlog con el feedback de Claro); la Review semanal de los viernes de 1 hora (demostración de lo completado al representante de Claro); y la Retrospectiva quincenal de 1 hora (mejora de proceso, personas y producto). Se suma un Replenishment estratégico mensual de 2 horas para ajustar prioridades por épica. Las cadencias son compromisos del equipo, no se negocian semana a semana (secciones 3.1 y 3.4).

**46. ¿Qué medidas de control de calidad implementarás durante el desarrollo y por qué son útiles en conjunto?**

Uso la Definition of Ready (criterios gherkin completos antes de desarrollar), TDD con cobertura mayor o igual al 80%, code review obligatorio con checklist arquitectónico, el análisis estático de SonarQube con Quality Gate bloqueante, OWASP Dependency Check para vulnerabilidades, y la Definition of Done (build, typecheck, lint, tests, deploy a QA y validación del PO). En conjunto son útiles porque la calidad se construye en cada paso (Built-In Quality) y no se verifica solo al final, lo que reduce el re-trabajo y protege la predictibilidad del flujo (secciones 4.4 y 5.10).

**47. ¿Cómo usarás criterios de aceptación para evitar malentendidos con el cliente?**

Escribo los criterios de aceptación en formato gherkin (Given-When-Then) con al menos dos escenarios verificables por HU, y son condición de la Definition of Ready para que una HU entre a desarrollo. En la Review el cliente valida contra esos escenarios con el software desplegado en QA, no contra descripciones ambiguas. Así, "terminado" significa exactamente lo que dicen los escenarios, y el PO valida con evidencia (capturas o video) antes de marcar Hecho (secciones 4.4 y 4.5).

**48. Explica la Teoría de Restricciones, identifica una restricción de tu proyecto y propone cómo eliminarla o reducirla.**

La Teoría de Restricciones sostiene que el rendimiento de un sistema está limitado por su cuello de botella, y que optimizar cualquier otra parte no mejora el resultado global hasta que se ataca esa restricción. En Flowtex la restricción típica es la columna En Revisión, donde el trabajo se acumula porque entra más de lo que sale. La reduzco bajando el WIP limit y aplicando "stop starting, start finishing", además de repartir la revisión con checklist y rotación, lo que baja el Lead Time sin sumar personas (secciones 5.2 y 5.3).

**49. ¿Qué es una retrospectiva y cómo la usarás para mejorar proceso, producto y equipo?**

La retrospectiva es la reunión quincenal de 1 hora donde el equipo reflexiona sobre cómo ser más efectivo (Principio 12) y produce al menos una acción concreta con responsable y fecha. La uso con herramientas diferenciadas por dimensión: Roses/Thorns/Buds para personas, 4Ls para procesos y Start/Stop/Continue para productos. Las acciones se priorizan con MoSCoW, se registran como HUs de tipo "chore" en el backlog y se miden en el período siguiente para verificar si el indicador mejoró (secciones 6.2, 6.3 y 4.4).

**50. Explica WIP, tiempo de ciclo y rendimiento. ¿Cómo usarás estas métricas para mejorar tu tablero?**

WIP es el trabajo en curso (tarjetas activas), el Cycle Time es el tiempo desde que una HU entra a "En Desarrollo" hasta "Hecho", y el Throughput o rendimiento son las HUs completadas por semana. Por la Ley de Little, Lead Time = WIP / Throughput, así que si el Lead Time supera el SLA, reduzco el WIP para bajarlo proporcionalmente. Uso el CFD y el Throughput Run Chart como radiadores para detectar acumulaciones y ajustar los WIP limits en cada Daily y Retrospectiva (secciones 5.2, 5.4 y 5.5).

**51. ¿Cómo defines un servicio en Kanban y cuál es el servicio principal de tu proyecto?**

Un servicio en Kanban es un flujo de trabajo diferenciado con su propia demanda, capacidad y SLA de tiempo de ciclo, representado como una swim lane del tablero. En Flowtex cada bounded context es un servicio (IAM, FormBuilder, Workflow, Tracking, Notifications, Reporting) con su WIP limit. El servicio principal es el flujo end-to-end que permite diseñar un formulario, vincularlo a un workflow, recibir solicitudes y decidirlas con trazabilidad, sostenido por FormBuilder, Workflow y Tracking (secciones 5.1 y 3.1).

**52. ¿Qué desperdicios Lean aparecen en tu proyecto: esperas, retrabajo, sobreproducción, defectos, tareas incompletas, cambios de contexto u otros?**

Aparecen tres principales, documentados en el análisis de las tres situaciones críticas: espera en FormBuilder (los desarrolladores esperan que su código sea revisado), inventario o trabajo incompleto en FlowEngine (HUs acumuladas sin valor entregado) y defectos en MigraFlow (retrabajo que consume el 60% de la capacidad). Cada bloqueador del tablero se clasifica por tipo de desperdicio Lean (WasteFlow) para atacar la causa raíz y no el síntoma (secciones 5.2 y 5.12).

**53. ¿Qué desperdicio es el más peligroso para tu MVP y qué acción tomarás para reducirlo?**

El más peligroso son los defectos, como en MigraFlow, porque generan retrabajo que no aporta valor y consumen gran parte de la capacidad, además de erosionar la confianza del cliente. La acción no es acelerar sino detener la acumulación: reducir el WIP a 1 lote o HU, verificar completamente antes de avanzar, establecer criterios de aceptación claros y capacitar al equipo en los patrones de datos antes de continuar. Es el principio de calidad integrada: la calidad se construye en cada paso, no se verifica al final (sección 5.3).

## Capítulo V: Control, riesgos, calidad y DevOps

**54. Describe al menos cuatro pasos para controlar tu método de trabajo durante el proyecto.**

Paso 1: medir Lead Time y Cycle Time diariamente y actualizar el CFD; si un servicio supera el SLA en más del 20%, se activa el protocolo. Paso 2: comparar el throughput real con el planificado en la Review del viernes, usando los 5 Porqués si hay déficit. Paso 3: identificar y resolver bloqueadores en el Daily, con el Scrum Master resolviendo en menos de 24 horas o escalando al PO. Paso 4: revisar WIP contra WIP limit al inicio de cada Daily y aplicar "stop starting, start finishing" si hay acumulación (sección 5.4).

**55. ¿Cómo detectarás desviaciones de alcance, tiempo, calidad o valor?**

Alcance: los cambios solo entran como HU formal, y las Won't Have se rechazan citando su ADR. Tiempo: el Lead Time y el Cycle Time se comparan contra el SLA por servicio, con alerta cuando lo superan en más del 20%. Calidad: la tasa de re-trabajo (HUs devueltas de Testing) y el Quality Gate de SonarQube. Valor: el Throughput de HUs desplegadas y validadas por el PO, más los KPIs del cliente. Los radiadores (Burndown, CFD, curva S, Throughput Run Chart) hacen visibles las desviaciones en tiempo real (secciones 5.4, 5.5 y 5.7).

**56. ¿Qué planes de acción usarás cuando aparezcan problemas en el equipo o en el producto?**

Ante un cuello de botella, reduzco el WIP y aplico "stop starting, start finishing". Ante un déficit de throughput dos semanas seguidas, escalo al PO para repriorizar y reducir alcance. Ante re-trabajo mayor al 10%, reviso la Definition of Done y refuerzo el code review. Ante problemas de equipo, uso la retrospectiva (Roses/Thorns/Buds) y acciones de mejora como pair programming rotativo. Cada plan queda como HU de tipo chore con responsable y fecha, y se mide su impacto (secciones 5.4, 5.7 y 6.3).

**57. ¿Cómo identificarás, priorizarás y responderás los riesgos del proyecto?**

Identifico los riesgos en una matriz con probabilidad, impacto y mitigación, y los priorizo por la combinación de ambos. Respondo con estrategias concretas: pruebas paralelas para la migración, ambiente QA replicado con Docker Compose para la indisponibilidad, una capa de abstracción (adapter hexagonal) con fallback a correo para los cambios de la API de Teams, y ADRs más pair programming para la rotación de personal. A nivel cuantitativo, uso simulación Monte Carlo y control de variabilidad (nivel 4 de madurez Kanban) para anticipar riesgos de incumplimiento antes de que se materialicen (secciones 4.4 y 4.3).

**58. Elige tres riesgos principales de tu proyecto y clasifícalos por probabilidad, impacto y respuesta.**

Uno: errores en la migración de formularios desde NINTEX, probabilidad alta e impacto alto; respuesta, pruebas paralelas (HU13) antes del apagado de NINTEX. Dos: cambios en la API de Microsoft Teams, probabilidad baja e impacto alto; respuesta, adapter hexagonal con fallback a correo. Tres: rotación de un integrante del equipo, probabilidad baja e impacto alto; respuesta, decisiones documentadas en ADRs y pair programming para transferir conocimiento (sección 4.4).

**59. ¿Por qué necesitas controlar tu método si estás trabajando de forma ágil?**

Porque el control ágil no es burocracia sino el mecanismo que detecta desviaciones antes de que se conviertan en retrasos críticos y que genera el aprendizaje de cada retrospectiva. Sin control, el equipo opera de forma reactiva ante crisis ya visibles; con control, ajusta el flujo de forma proactiva antes de que el impacto llegue al cliente. Además, el control permite comprometer fechas realistas con Claro basadas en el throughput real y no en promesas (sección 5.6).

**60. ¿Cómo evaluarás si tu método de control ayuda al equipo o se vuelve burocrático?**

Lo evalúo con el criterio de que todo control se apoya en radiadores ya existentes (tablero, CFD, Burndown) y no en reportes ni reuniones de estado adicionales: la visibilidad del tablero elimina la necesidad de esas reuniones. Si una herramienta de control no genera valor en el contexto, la cambio, según la recomendación 10 del gestor ágil. La señal de burocracia es medir por medir sin que las métricas produzcan una decisión; por eso cada control de la tabla 5.7 especifica qué acción se toma después (secciones 5.5, 5.7 y 7.4).

**61. Define los KPI de control que usarás y explica cómo se ejecutarán.**

Controlo cuatro cosas: WIP por columna (para evitar acumulación, se ejecuta revisando el tablero al inicio de cada Daily), Lead Time por servicio (para detectar desvíos del SLA, con análisis de 5 Porqués si supera el 20%), Throughput semanal (para proyectar fechas con base estadística, escalando al PO si cae bajo 3 HUs dos semanas seguidas) y tasa de defectos (para reducir re-trabajo, revisando la Definition of Done si supera el 10%). Los resultados se publican en el canal de Teams y se discuten en la Review (secciones 5.7 y 5.4).

**62. Explica los 8 pasos de DevOps aplicados a tu MVP: planificar, codificar, construir, probar, liberar, desplegar, operar y monitorear.**

Plan: backlog en el tablero con MoSCoW y WIP limits. Code: Java 21 + Spring Boot y React + TypeScript, con Conventional Commits y trunk-based. Build: mvn clean package y npm run build, con imagen Docker en el pipeline. Test: JUnit 5, Mockito y Vitest con cobertura mínima del 80%. Release: tag de versión semántica y changelog automático, con aprobación del PO. Deploy: automático a QA en cada merge, con smoke tests y promoción manual a producción vía feature flags. Operate: SLA de disponibilidad mayor o igual a 99.5% con alertas por Teams. Monitor: tiempo de respuesta menor a 3 segundos, tasa de error menor al 0.1% y logs centralizados en el stack ELK (sección 5.11).

**63. Define DoD, TDD, BDD y ATDD, y explica cuál aplicarías en tu proyecto.**

DoD (Definition of Done) es el conjunto de condiciones para considerar una HU terminada: build, typecheck, lint, tests con 80% de cobertura, deploy a QA y validación del PO. TDD (Test-Driven Development) es escribir primero los tests y luego el código. BDD (Behavior-Driven Development) describe el comportamiento en escenarios Given-When-Then. ATDD (Acceptance Test-Driven Development) deriva las pruebas de los criterios de aceptación acordados con el cliente. En Flowtex aplico los cuatro combinados: DoD y TDD en el ciclo de desarrollo, y los criterios gherkin de las HUs cumplen el rol de BDD y ATDD (secciones 4.4 y 4.5).

**64. ¿Qué software o herramientas usarás para DevOps? Considera GitHub, Docker, Kubernetes, Prometheus, Jenkins, GitHub Actions, GitLab CI/CD u otras.**

El informe usa GitHub Actions como pipeline de CI/CD, Docker para contenedores y el ambiente QA (Docker Compose), SonarQube para análisis estático con Quality Gate, OWASP Dependency Check para vulnerabilidades, y el stack ELK (Elasticsearch, Logstash, Kibana) para centralizar logs. El registro de contenedores privado de Hitss almacena los artefactos y el control de versiones es Git en GitHub con trunk-based development. El informe cita Kubernetes (orquestación de contenedores), Prometheus con Grafana (métricas de sistema) y Jenkins o GitLab CI/CD (automatización complementaria del pipeline) como evolución del método hacia la observabilidad y el escalamiento horizontal del backend, no como herramientas ya implementadas en el MVP (secciones 5.13, 5.10 y 5.11).

**65. Justifica cómo aplicarías Integración Continua y Entrega Continua en tu MVP.**

En CI, cada pull request dispara build, tests unitarios y de integración, análisis de SonarQube y OWASP Dependency Check; si el Quality Gate no pasa (cobertura menor al 80% o code smells críticos), el merge se bloquea. En CD, cada merge aprobado a main despliega automáticamente a QA con smoke tests, y la promoción a producción requiere aprobación manual del PO con feature flags para activación gradual. Esto elimina el "funciona en mi máquina" y garantiza que cada HU validada es software realmente desplegado (secciones 5.10 y 4.7).

**66. ¿Qué controles de seguridad, pruebas y monitoreo incluirás antes de mostrar el MVP al cliente?**

Seguridad: cifrado en tránsito y en reposo (RNF03), OWASP Dependency Check con bloqueo del deploy si hay CVE de puntaje mayor o igual a 7.0, y validación regulatoria firmada por Compliance sobre soberanía de datos. Pruebas: tests unitarios y de integración con 80% de cobertura, smoke tests post-deploy y pruebas de carga con JMeter para 200 a 500 usuarios concurrentes. Monitoreo: disponibilidad mayor o igual a 99.5%, tiempo de respuesta menor a 3 segundos, tasa de error menor al 0.1% y alertas por Teams (secciones 5.10, 5.11, 2.8 y 1.6.2).

**67. Si una funcionalidad con IA entrega respuestas incorrectas, ¿qué control implementarías antes de liberarla?**

Mantengo el diseño de humano en el bucle: la IA de sugerencias de campos (HU-FB-05) propone, pero el diseñador decide qué acepta, así que una sugerencia incorrecta nunca se aplica sola. Antes de liberar, valido la relevancia de las sugerencias contra un conjunto de casos de prueba y exijo que cada sugerencia venga con su justificación para que el usuario juzgue. El informe fija controles concretos: un umbral mínimo de precisión en pruebas de aceptación por debajo del cual la función no se libera, la sugerencia como propuesta no vinculante (nunca configuración aplicada sin confirmación del usuario) y un fallback heurístico que entrega campos por reglas cuando el modelo falla o devuelve baja confianza (secciones 5.14.2 y 5.14.1, HU-FB-05).

**68. ¿Cómo manejarás la deuda técnica generada por construir rápido el MVP?**

La contengo con calidad integrada: la Definition of Done exige tests, lint y cobertura del 80%, el Quality Gate de SonarQube bloquea el merge ante code smells críticos, y el code review con checklist arquitectónico verifica que no haya referencias cruzadas entre bounded contexts. Las decisiones técnicas quedan en ADRs para no perder contexto. Si aparece deuda, se registra como HU de tipo chore, se prioriza con MoSCoW en la retrospectiva y se paga en el período siguiente sin acumularse (secciones 4.4, 4.5 y 6.1).

## Capítulo VI: Cierre, review y mejora continua

**69. ¿Qué mejoras identificaste durante el proyecto y qué pasos usaste para implementarlas?**

Identifiqué mejoras en tres dimensiones: procesos (reducir el code review de 2 días a 4 horas con checklist y rotación de revisor), personas (capacitar a Milagros en DDD + CQRS para reducir la dependencia del PO) y producto (templates predefinidos en FormBuilder y un asistente de reglas condicionales en FlowEngine). El proceso de implementación son cuatro pasos: recolectar evidencia con las métricas del tablero, aplicar la retrospectiva estructurada, priorizar acciones con MoSCoW y ejecutarlas como HUs chore midiendo su impacto (secciones 6.3 y 6.4).

**70. Después de aplicar una mejora, ¿cómo verificarás si realmente funcionó?**

Mido el indicador afectado al cierre del período: por ejemplo, si la mejora era reducir el re-trabajo, verifico si la tasa bajó del 10%; si era acelerar el code review, si el Cycle Time del review cayó de 2 días a 4 horas. Si el indicador mejoró, documento la mejora y continúo; si no mejoró, reviso y ajusto la acción antes de reincorporarla al backlog. Esto es exactamente la etapa Check del ciclo PDCA (secciones 6.3 y 6.7).

**71. ¿Qué harás luego de la mejora: estandarizar, medir, compartir aprendizaje o volver a experimentar?**

Sigo el cierre del ciclo PDCA: si la mejora funcionó, la estandarizo (por ejemplo, el checklist de code review pasa a ser política del tablero) y comparto el aprendizaje en la retrospectiva y el canal de Teams; si no, vuelvo a experimentar con una acción ajustada. Las conclusiones de la retrospectiva (Act) alimentan la planificación del período siguiente (Plan), de modo que cada iteración de dos semanas es una vuelta completa de PDCA. Así el aprendizaje queda institucionalizado y no depende de la memoria individual (secciones 6.7 y 6.3).

**72. Explica la lógica del review con el cliente: qué se muestra, qué se valida y qué decisión se toma.**

En la Review semanal de los viernes se muestra el software desplegado en QA con pantalla compartida en Teams, no reportes escritos. Se validan las HUs completadas contra sus criterios de aceptación gherkin, con el representante del Área de Tecnología de Claro interactuando directamente con las funcionalidades. La decisión que se toma es aceptar la HU, devolverla con observaciones o repriorizar el backlog según el feedback del cliente, que el PO incorpora en el Replenishment (secciones 1.10.2, principio 6, y 3.1).

**73. ¿Qué evidencias presentarás en el review para demostrar valor?**

Presento el software funcionando en QA (los cuatro flujos del MVP: creación en FormBuilder, configuración de flujo en FlowEngine, envío y seguimiento del solicitante, y aprobación con notificación), las capturas o video de los criterios de aceptación cumplidos, y los radiadores de avance (Burndown por épica, CFD, curva S). También muestro los KPIs con fórmula explícita frente a la línea base de NINTEX. La evidencia central es que la HU está desplegada y validada, no que se trabajó en ella (secciones 7.6, 5.5 y 5.9).

**74. Explica la lógica del Definition of Done y sus partes: funcionalidad, calidad, pruebas, documentación mínima, despliegue y aceptación.**

La Definition of Done fija cuándo una HU está terminada y evita que se cuente como progreso algo incompleto. Sus partes en Flowtex son: funcionalidad (los criterios de aceptación cumplidos), calidad (lint sin warnings críticos, Quality Gate de SonarQube), pruebas (tests con cobertura mayor o igual al 80%), documentación mínima (ADRs y trazabilidad a los archivos del repo), despliegue (deploy exitoso en el ambiente QA) y aceptación (validación del PO con evidencia). Solo cuando se cumplen todas, la tarjeta pasa a Hecho (sección 4.4).

**75. ¿Qué diferencia hay entre "terminado por el equipo" y "aceptado por el cliente"?**

"Terminado por el equipo" significa que la HU cumple la Definition of Done: build, tests, despliegue en QA y validación técnica del PO. "Aceptado por el cliente" ocurre en la Review, cuando el representante de Claro interactúa con la funcionalidad desplegada y confirma que resuelve su necesidad real. Una HU puede estar técnicamente hecha y aun así ser rechazada por el cliente si no aporta el valor esperado, lo que se convierte en aprendizaje que ajusta el backlog (secciones 4.4, 7.2 y 3.4).

**76. ¿Qué aprendizaje del cliente cambiaría tu backlog después del review?**

Cambiaría el backlog cualquier feedback que revele que una funcionalidad no resuelve el proceso real: por ejemplo, si el cliente indica que la configuración de reglas condicionales es poco intuitiva (pain point ya detectado en la prueba del prototipo), subiría la prioridad del asistente guiado. La herramienta ProductRetro integra ese feedback con Start/Stop/Continue para decidir qué agregar, retirar o mantener, y LearnPivot decide con evidencia si perseverar o pivotar. El aprendizaje se traduce en HUs repriorizadas con MoSCoW (secciones 6.6, 6.2 y 2.1).

## Capítulo VII: Conclusiones y framework propio

**77. Aplica un principio del Manifiesto Ágil a una situación real ocurrida en tu proyecto.**

Apliqué el Principio 12 (reflexionar y ajustar el comportamiento) cuando el equipo detectó un cuello de botella en la columna Testing: en la retrospectiva decidió reducir el WIP de 4 a 3 y esa acción, ejecutada como HU chore, restableció el flujo. También el Principio 2 se evidenció cuando la prueba del prototipo reveló que el rollback de formularios faltaba, y se incorporó como HU de alta prioridad en el Sprint 2. En ambos casos el equipo cambió su plan a partir de evidencia real (secciones 4.1, 6.3 y 2.1).

**78. Aplica un valor del Manifiesto Ágil a una decisión difícil que tomó tu equipo.**

Apliqué el Valor 4 (responder al cambio sobre seguir un plan) en la decisión de descope del MVP académico: al revisar los repos reales, el equipo sacó MigraFlow, las notificaciones de Teams y el escalamiento programado del alcance verificable, documentándolo en los ADR 0007 a 0010. Fue difícil porque contradecía la visión original del capítulo I, pero priorizó entregar un flujo end-to-end demostrable sobre cumplir un plan inicial. El backlog operativo del capítulo III refleja esa decisión (secciones 3.0 y 1.10).

**79. ¿Cuál es el framework que propone tu equipo? Colócale un nombre claro y defendible.**

El framework se llama FlowAgile. Es un método de gestión de proyectos de software ágil creado por el equipo de Hitss para Flowtex, que fusiona herramientas de Kanban, Design Thinking, Lean, Scrum, Lean Startup y métricas de flujo en un ciclo continuo de cinco fases: Inicio, Plan, Ejecución, Control y Mejora. El nombre es defendible porque el eje del método es el flujo de valor controlado con métricas (Lead Time, Throughput, WIP) sobre una base ágil (secciones 7.1 y 7.5).

**80. ¿Por qué tu framework es útil para resolver el tipo de problema que trabajaste?**

Es útil porque el problema de Flowtex pertenece al dominio complejo de Cynefin, donde no se conoce de antemano qué necesitará cada área ni qué comportamientos de NINTEX replicar, así que se avanza experimentando y ajustando. FlowAgile institucionaliza la secuencia "experimentar, sentir, responder" con iteraciones cortas, entregas frecuentes y control por métricas de flujo. Además diseña el sistema de trabajo desde la demanda real del cliente (STATIK), no desde una plantilla genérica (secciones 7.3, 1.11 y 7.5).

**81. ¿En qué está enfocado tu framework: valor, rapidez, aprendizaje, calidad, sostenibilidad, IA, experiencia de usuario u otro?**

FlowAgile está enfocado en la entrega de valor predecible y sostenible controlada por métricas de flujo. Cada fase persigue un valor: la comprensión del problema en Inicio, la predictibilidad sin rigidez en Plan, la entrega sostenible en Ejecución, la transparencia hacia el cliente en Control y el aprendizaje institucionalizado en Mejora. No es un método de rapidez a cualquier costo, sino de flujo estable con calidad técnica integrada (secciones 7.3 y 7.5).

**82. ¿Qué quiere lograr tu framework y qué tipo de valor produce en general?**

FlowAgile quiere lograr que un equipo pequeño entregue software valioso de forma incremental, con fechas comprometibles sobre base estadística y mejora continua en personas, procesos y productos. El valor que produce es predictibilidad para el cliente (métricas de flujo en lugar de promesas), calidad mantenible (arquitectura y tests como criterio de aceptación) y aprendizaje continuo (retrospectiva quincenal con acción concreta). Todo respaldado en al menos uno de los cuatro valores o doce principios del Manifiesto Ágil (secciones 7.3 y 7.5).

**83. Crea tres principios propios para el uso de tu framework.**

El informe define cuatro principios de uso, de los que destaco tres: primero, toda herramienta de FlowAgile es una fusión de al menos dos métodos del sílabo SI570, nunca la copia directa de uno solo; segundo, el control mediante métricas de flujo (Lead Time, Throughput, WIP) es obligatorio para mantener la predictibilidad; tercero, la mejora es continua, y cada retrospectiva quincenal produce al menos una acción con responsable y fecha. Un cuarto principio exige que toda decisión de proceso se respalde en un valor o principio del Manifiesto Ágil (sección 7.5).

**84. ¿Cuándo no debería usarse tu framework? Menciona condiciones donde fallaría o no agregaría valor.**

FlowAgile no es adecuado para productos de consumo masivo (B2C) donde la experimentación con usuarios externos y el A/B testing sean el núcleo del método. Tampoco para proyectos con requisitos completamente fijos e inmutables, como cumplimiento regulatorio con especificación cerrada, donde un método predictivo (cascada o CMMI) es más apropiado. Fallaría además si el equipo excede el rango de tres a diez personas o si el cliente no puede validar el software con frecuencia (sección 7.5).

**85. ¿Qué diferencia a tu framework de Scrum, Kanban, Scrumban o Lean Startup?**

FlowAgile no adopta ninguno puro: cada una de sus herramientas es una fusión de al menos dos métodos del sílabo. A diferencia de Scrum, no usa sprints de alcance fijo; a diferencia de Kanban genérico, diseña el tablero desde la demanda del cliente con STATIK y lo integra con Design Thinking, control cuantitativo y retrospectivas por dimensión; a diferencia de Scrumban, parte del contexto externo y no de la estructura interna del equipo; y a diferencia de Lean Startup solo, no se limita al descubrimiento del MVP sino que cubre el ciclo completo de cinco fases con métricas de flujo obligatorias (secciones 7.5, 4.2 y 2.5).

**86. Si otro equipo quisiera replicar tu framework, ¿qué pasos mínimos debería seguir?**

Debería, según las recomendaciones para el gestor ágil: formar un equipo autoorganizado sin mando y control; diseñar el sistema de trabajo (tablero Kanban con WIP limits y políticas explícitas) antes de asignar tareas; priorizar el backlog con MoSCoW e ImpactPriority; establecer las cadencias fijas; integrar CI/CD desde el primer sprint; medir el progreso en software funcionando con métricas de flujo; involucrar al cliente en Reviews semanales; y aplicar retrospectivas con herramientas diferenciadas por dimensión. El principio transversal es usar el método para aprender, cambiando cualquier herramienta que no genere valor (secciones 7.4 y 7.5).

## 25 preguntas adicionales situacionales para defensa oral

**87. Tu cliente pide agregar una funcionalidad nueva justo antes de la entrega. ¿La aceptas, la rechazas o la colocas en backlog? Justifica con valor, riesgo y capacidad.**

La coloco en el backlog y evalúo con el PO su valor, riesgo y capacidad antes de comprometerla. Documento el cambio como HU formal, evalúo su impacto en el WIP, el Lead Time y el throughput de la semana, y le asigno clase de servicio; si es urgente y de alto valor, PriorityFlow permite adelantarla sin replanificar todo. No la acepto de forma informal justo antes de la entrega, porque introduciría riesgo de romper lo ya validado (Valor 4 y Principio 2), salvo que el valor supere claramente ese riesgo y haya capacidad (secciones 4.4 y 3.2).

**88. Un usuario dice que el MVP es útil, pero difícil de usar. ¿Qué métrica, experimento o mejora aplicarías?**

Correría una prueba de usabilidad supervisada con el protocolo de tareas, midiendo el tiempo de completitud, el porcentaje de éxito y el NPS, tal como en la Fase 5 del Design Thinking. La métrica clave es el criterio de validación: 80% de administradores creando un formulario en menos de 30 minutos sin capacitación. Como mejora aplicaría, por ejemplo, templates predefinidos en FormBuilder o el asistente guiado de reglas condicionales, priorizada como HU en la retrospectiva de producto (secciones 2.6, 2.1 y 6.4).

**89. La IA de tu MVP mejora la velocidad, pero reduce precisión. ¿Qué decisión tomarías y qué KPI usarías?**

Mantendría el diseño de humano en el bucle: la IA sugiere campos pero el diseñador decide, así que la precisión final la garantiza el usuario. El informe define los KPIs propios del Asistente con umbral tipo semáforo: la tasa de aceptación de campos sugeridos (verde mayor o igual a 60%) y la precisión de las sugerencias (tipo correcto sin corregir, verde mayor o igual a 80%), que en rojo obligan a revisar el prompt del modelo y el mapeo de tipos. La decisión sería priorizar la precisión sobre la velocidad, porque una sugerencia incorrecta que el usuario descarta o corrige no ahorra tiempo real, y el fallback heurístico sostiene la continuidad cuando el modelo baja su confianza (secciones 5.14.1 y 5.14.2, HU-FB-05).

**90. El equipo está ocupado, pero el tablero muestra que casi nada se termina. ¿Qué problema de flujo sospechas y cómo lo resolverías?**

Sospecho exceso de WIP: hay más trabajo iniciado que capacidad para terminarlo, lo que dispara el Lead Time por la Ley de Little (Lead Time = WIP / Throughput). Es el caso de FormBuilder con WIP 6 y throughput bajo, donde las HUs se acumulan en revisión. Lo resuelvo bajando el WIP limit y aplicando "stop starting, start finishing": nadie inicia una HU nueva mientras haya una en revisión esperando. El informe muestra que bajar el WIP de 6 a 3 reduce el Lead Time de 10 a 5 días sin sumar personas (secciones 5.2 y 5.3).

**91. Un integrante no participa en las reuniones. ¿Cómo actuarías como líder facilitador?**

Como el equipo está en Norming ("Liberar de mando y control"), el líder facilita en lugar de imponer: abordaría la situación en la retrospectiva de personas con Roses/Thorns/Buds, que hace visibles fricciones de comunicación y motivación sin señalar culpables. Buscaría la causa (carga, claridad de rol o falta de espacio para participar) y acordaría una acción concreta, como rotar el rol de facilitador para dar protagonismo. El objetivo es reintegrar por acuerdo del equipo, no por control directivo (secciones 4.1 y 6.2).

**92. El cliente quiere documentación extensa, pero el equipo necesita avanzar con el MVP. ¿Cómo equilibras documentación suficiente y software funcionando?**

Aplico el Valor 2 (software funcionando sobre documentación exhaustiva) sin caer en cero documentación. La Definition of Done ya exige documentación mínima: ADRs de las decisiones clave, criterios de aceptación gherkin y trazabilidad a los archivos del repo. Al cliente le muestro que el software desplegado y validado en cada Review es la mejor evidencia de avance, y reservo la documentación formal para lo que agregue valor real (auditoría, cumplimiento OSIPTEL). La documentación sigue al software, no lo reemplaza (secciones 1.10, 4.4 y 7.2).

**93. Tu backlog tiene 40 historias y solo puedes entregar 10. ¿Cómo priorizas con MoSCoW, valor y riesgo?**

Entrego primero los Must Have, que son el flujo end-to-end mínimo (IAM, diseño de formulario, vinculación a workflow, recepción y decisión de solicitudes con trazabilidad); sin ellos no hay producto demostrable. Los Should y Could se posponen. Dentro de una misma categoría, uso el valor y el riesgo como criterio, y si dos historias compiten por la capacidad de un período, aplico WSJF (costo de retraso sobre tamaño) como desempate cuantitativo. Las Won't Have se dejan fuera citando su ADR (secciones 3.0.3, 1.8 y 1.8.4).

**94. Una historia Must no tiene criterios de aceptación claros. ¿Debe entrar a desarrollo? Justifica.**

No debe entrar. La Definition of Ready exige que toda HU tenga criterios de aceptación en gherkin completos y verificables con al menos dos escenarios antes de pasar a "En Desarrollo". Una historia ambigua genera re-trabajo y rompe la predictibilidad del flujo, aunque sea Must Have. Primero se refina con el PO hasta cumplir la Definition of Ready y recién entonces entra al desarrollo (secciones 4.4 y 3.1).

**95. Durante la review, el cliente rechaza una funcionalidad que cumplía lo solicitado. ¿Qué aprendizaje obtienes y cómo ajustas el proceso?**

El aprendizaje es que "terminado por el equipo" no equivale a "aceptado por el cliente": lo solicitado no coincidió con la necesidad real, señal de que los criterios de aceptación no capturaron bien el proceso. Ajusto el proceso reforzando la definición conjunta de criterios gherkin con el cliente (ATDD) y validando prototipos o incrementos más pequeños antes de construir de más. El rechazo se convierte en feedback que, vía ProductRetro y LearnPivot, repriorioriza el backlog (secciones 7.2, 6.6 y 4.4).

**96. El equipo quiere usar Scrum, pero el trabajo llega de forma impredecible. ¿Mantienes Scrum, cambias a Kanban o usas Scrumban?**

Con demanda impredecible, los sprints de alcance fijo de Scrum se rompen, así que me apoyo en el enfoque Kanban del proyecto (STATIK), que gestiona el trabajo con flujo continuo, WIP limits y clases de servicio sin comprometer un alcance cerrado por sprint. Conservo las cadencias útiles de sabor Scrum (Replenishment, Review, Retrospectiva), lo que en la práctica es un Scrumban. La clave es que una tarjeta urgente puede adelantar a otras sin replanificar todo el tablero (secciones 4.2, 3.1 y 3.2).

**97. Detectas que QA es el cuello de botella. ¿Qué política de WIP o cambio de proceso aplicarías?**

Aplicaría un WIP limit estricto a la columna Testing (en el tablero es 2) y la regla "stop starting, start finishing": el equipo termina y ayuda a mover lo que está en QA antes de iniciar nuevas HUs. Reduciría la llegada de defectos aguas arriba reforzando la Definition of Done y el code review, ya que menos re-trabajo alivia QA. Si el embudo persiste, redistribuiría capacidad hacia Testing, coherente con la Teoría de Restricciones (secciones 5.7, 5.4 y 3.1).

**98. El MVP funciona en local, pero falla al desplegarse. ¿Qué práctica DevOps hubiera prevenido el problema?**

La Integración y Entrega Continua con despliegue automático a un ambiente QA idéntico al de producción, más los smoke tests post-deploy, que es justamente lo que DeployFlow y DeployKan integran al tablero para eliminar el "funciona en mi máquina". El ambiente QA replicado con Docker Compose garantiza paridad entre entornos, y el Quality Gate bloquea artefactos que no pasan build y tests. Con ese pipeline, el fallo de despliegue se habría detectado en QA antes de la validación del PO (secciones 4.7, 5.10 y 4.4).

**99. Si tu IA usa datos sensibles del usuario, ¿qué riesgos éticos, legales o técnicos debes controlar?**

Legalmente anclo el tratamiento en la Ley N.º 29733 de Protección de Datos Personales del Perú, que exige consentimiento y finalidad declarada, más la soberanía de datos con infraestructura propia y validación firmada por Compliance antes de producción. Técnicamente aplico cifrado en tránsito y en reposo (RNF03) y el log de auditoría inmutable de cada acción (RNF05), con acceso al historial limitado por rol a Auditoría y Compliance. En lo ético, el informe fija la privacidad y minimización de datos (recolectar solo lo necesario) y el uso responsable de la IA: el Asistente no emplea datos personales ni sensibles de los solicitantes para entrenar modelos, opera solo sobre la descripción del propósito del formulario y es transparente al indicar que las sugerencias son generadas por IA y requieren validación (secciones 5.15, 1.6.2 y 3.0.2).

**100. ¿Qué evidencia demuestra que tu proyecto reduce costos o aumenta ingresos?**

La evidencia de reducción de costos es la comparación del gasto anual en licencias de NINTEX (más de S/. 400,000, con soporte externo) contra el costo de la solución inhouse de Hitss, con meta de reducción mayor o igual al 60% y ROI positivo en el primer año. Se mide con la fórmula (costo anual NINTEX menos costo anual Flowtex) sobre costo anual NINTEX por cien, verificada al cierre del primer año fiscal. Al ser un sistema interno, el valor es ahorro y eficiencia, no ingresos directos (secciones 1.7, 2.7 y 1.9.2).

**101. ¿Qué indicador demostraría impacto social relacionado con el ODS elegido?**

El informe fija el ODS 9 (Industria, Innovación e Infraestructura) como principal y define indicadores de impacto social medibles y trazables al proyecto: el porcentaje de procesos de aprobación tramitados de forma totalmente digital (sin papel ni correo manual), el número de horas-persona de reproceso manual evitadas al mes, y la reducción del tiempo de ciclo de creación de formularios (de 21 días a 2 días laborales). La mejora de estos indicadores evidencia una infraestructura digital más eficiente (ODS 9) y una operación con menos desperdicio (ODS 12). Todos se derivan de métricas que el propio sistema ya registra, lo que los hace verificables ante el cliente (sección 1.3.4).

**102. Si el usuario final y el cliente tienen prioridades opuestas, ¿cómo facilitas la decisión?**

Facilito con datos y con las cadencias del método: llevo la tensión a la Review y al Replenishment, donde el representante de Claro y el PO priorizan juntos el backlog con MoSCoW e ImpactPriority según el impacto en el proceso crítico. El criterio de desempate es el valor de negocio y el riesgo, y si dos ítems compiten por capacidad, WSJF. El líder facilita el acuerdo en lugar de imponerlo, coherente con el Valor 3 (colaboración con el cliente) y con la fase Norming del equipo (secciones 3.4, 1.8.4 y 2.3).

**103. ¿Qué harías si el KPI elegido mejora, pero los usuarios siguen insatisfechos?**

Sospecharía que el KPI mide actividad y no valor real, y volvería a la evidencia del usuario. Contrastaría la métrica técnica (por ejemplo tiempo de creación) con métricas centradas en la experiencia (NPS, tasa de éxito en la prueba de usabilidad, feedback de la Review). El informe construye los KPIs desde el journey del usuario (JourneyKPI) precisamente para evitar indicadores desvinculados; si aún así hay insatisfacción, ajusto o cambio el KPI y repriorioriza mejoras con ProductRetro (secciones 2.10, 7.3 y 6.6).

**104. ¿Cómo validarías que tu solución no es solo tecnológicamente interesante, sino realmente valiosa?**

Validando con el usuario real y con el problema, no con la tecnología. La hipótesis central se prueba con usuarios (¿crean formularios en menos de 2 días sin capacitación?), los KPIs derivan del journey y sus pain points, y la priorización (ImpactPriority) construye primero lo que más aporta al proceso crítico del cliente, no lo más técnicamente atractivo. Si el software desplegado mejora los KPIs frente a NINTEX y el cliente lo acepta en la Review, es valioso; si no, se pivota (secciones 7.3, 2.10 y 2.5).

**105. ¿Qué decisión tomarías si el equipo está en storming y el plazo se acerca?**

En Storming ("Capacitar"), el líder media los conflictos y los cierra con decisiones documentadas: llevaría el desacuerdo técnico a una votación ponderada y lo registraría como ADR, como se hizo con DDD + CQRS y la arquitectura hexagonal. Con el plazo cerca, acotaría el alcance a los Must Have con MoSCoW para proteger la entrega, y usaría pair programming para desbloquear las HUs de alta complejidad. El objetivo es convertir la energía del conflicto en acuerdos operativos y avanzar hacia Norming (secciones 4.1, 2.3 y 3.0.3).

**106. ¿Qué parte de tu producto debería automatizarse y qué parte debería mantenerse manual al inicio?**

Automatizo desde el inicio lo que da valor recurrente y reduce error: el pipeline CI/CD (build, tests, deploy a QA), el versionamiento de formularios, las notificaciones por correo y el escalamiento por jerarquía. Mantengo manual al inicio lo que es de baja frecuencia o alto riesgo con la información disponible: la promoción a producción (aprobación manual del PO con feature flags), la delegación de aprobaciones (gestionable a mano en el MVP) y la migración, que exige verificación por lote. La regla es automatizar lo repetitivo y validado, y dejar manual lo excepcional hasta tener datos (secciones 5.10, 5.11 y 2.6).

**107. ¿Qué prueba harías primero: funcional, usabilidad, seguridad, rendimiento o aceptación? Justifica.**

Primero la prueba funcional, porque si el software no cumple sus criterios de aceptación no tiene sentido evaluar lo demás; esto está garantizado por TDD y los tests de la Definition of Done. Muy cerca priorizo la usabilidad, ya que la hipótesis central del proyecto es que los administradores creen formularios de forma autónoma, y el criterio de validación del MVP es de usabilidad. Seguridad, rendimiento (JMeter) y aceptación del cliente se ejecutan antes de mostrar el MVP en producción (secciones 4.5, 2.6 y 2.8).

**108. ¿Cómo demostrarías trazabilidad entre ODS, problema, backlog, MVP, KPI y valor entregado?**

El informe construye la cadena completa ODS, problema, backlog, MVP, KPI y valor: el ODS 9 y 12 se aterrizan en la problemática de NINTEX (proceso manual, lento, dependiente de un proveedor externo y con desperdicio de papel), que origina las épicas FormBuilder y FlowEngine del backlog, materializadas en el MVP de los capítulos posteriores, medidas por KPIs de tiempo de ciclo y de porcentaje de migración, y verificadas como valor entregado en las Reviews con Claro. Cada HU mantiene trazabilidad a los archivos del repo, y cada pain point del journey se convierte en un KPI con fórmula (JourneyKPI). El cierre del informe reafirma que el MVP desplegado fortalece la infraestructura interna (ODS 9), reduce papel y reprocesos (ODS 12) y libera tiempo del personal hacia trabajo de mayor valor (ODS 8) (secciones 1.3.4 y 7.6).

**109. Si tu MVP falla durante la exposición, ¿cómo defenderías el aprendizaje ágil obtenido?**

Defendería que en el dominio complejo de Cynefin el fallo es información, no derrota: la secuencia "experimentar, sentir, responder" convierte cada incidente en aprendizaje. Mostraría la evidencia del proceso (tablero, métricas de flujo, ADRs, retrospectivas) y ejemplos reales de aprendizaje ya incorporado, como el rollback que subió de prioridad tras fallar en la prueba del prototipo o el descope documentado en ADRs. El valor ágil está en un equipo que detecta, aprende y ajusta con evidencia, no en un demo perfecto (secciones 1.11, 2.1 y 5.6).

**110. ¿Qué métrica usarías para saber si la IA realmente ayuda y no solo adorna el producto?**

El informe define exactamente esta métrica: la tasa de aceptación de campos sugeridos (campos que el diseñador agrega al canvas sobre el total mostrado) y la precisión de las sugerencias (aceptadas cuyo tipo no se corrige sobre el total aceptado), ambas con umbral semáforo. Una IA que sugiere campos que el usuario descarta o corrige no aporta valor aunque sea vistosa, así que en rojo (aceptación menor a 40%) se revisa el prompt y los contextos de ejemplo. Se complementa con la cobertura del fallback heurístico, que mide la continuidad del servicio cuando el modelo no está disponible, cerrando la pregunta de si la IA realmente ayuda y no solo adorna (secciones 5.14.1 y 5.14.2, HU-FB-05).

**111. ¿Qué cambiarías de tu framework después de haber ejecutado el proyecto y recibido feedback?**

Aplicaría LearnPivot y las recomendaciones del gestor ágil: usar el método para aprender y cambiar cualquier herramienta que no genere valor en el contexto. Tras la ejecución, ajustaría FlowAgile para reflejar el descope real (el backlog operativo del capítulo III ya reemplazó parte de la visión inicial), reforzaría la definición conjunta de criterios de aceptación con el cliente para reducir rechazos en Review, y automatizaría la generación de radiadores (CFD) que hoy es manual. Cada cambio se validaría midiendo su impacto en el período siguiente, según el ciclo PDCA (secciones 7.4, 3.0 y 6.7).
