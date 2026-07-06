# Balotario SI570 con respuestas modelo (Proyecto FLOWTEX)

Documento de estudio para la defensa oral del curso SI570 (Desarrollo Ágil): cada pregunta del balotario va seguida de una respuesta modelo, concisa y lista para decirse en voz alta, fundamentada en los capítulos actualizados del informe FLOWTEX (reemplazo de NINTEX para el Área de Tecnología de Claro Perú). Las respuestas citan la herramienta, el principio, la sección o el autor cuando corresponde.

> Recordatorio de coherencia para toda la defensa: el equipo está en la fase Tuckman "Liberar de mando y control" (Norming), que es el estado actual, no en "Empoderar" (Performing, estado objetivo). El contexto es dominio Complejo de Cynefin (experimentar, sentir, responder), autor Dave Snowden. Los ocho Must Have son la visión del producto (cap. I) y los cerca de dieciocho Must Have son el backlog ejecutable (cap. III). El ciclo PDCA lo popularizó Deming sobre la base de Shewhart.

---

## Sección 1. Preguntas ya confirmadas del profe

**P1. ¿Qué principio del manifiesto ágil aplicaste para desarrollar el MVP?**

Apliqué el Principio 10: la simplicidad, el arte de maximizar la cantidad de trabajo no realizado. Con MoSCoW dejamos en el MVP solo las funcionalidades que replican el núcleo de NINTEX y pospusimos explícitamente todo lo secundario, como los dashboards de BI y la integración con ERP legacy (cap. I, 1.10.2 y 1.8.1). Así el equipo de cinco personas concentró su capacidad en lo que entrega valor real dentro del plazo del ciclo.

**P2. ¿Por qué elegiste la funcionalidad desarrollada en el MVP siguiendo los conceptos del manifiesto ágil?**

Por el Principio 1: satisfacer al cliente mediante la entrega temprana y continua de software con valor. Elegimos primero FormBuilder y el flujo secuencial básico porque son las capacidades que permiten a Claro dejar de depender de NINTEX desde el primer incremento (cap. I, 1.10.2). Se prioriza el dolor más crítico del usuario, no lo técnicamente más interesante.

**P3. ¿Qué herramienta te permite identificar los dolores del usuario?**

El mapa de empatía. Organiza la comprensión del usuario en seis cuadrantes (qué piensa y siente, qué oye, qué ve, qué dice y hace, sus esfuerzos o dolores, y sus resultados o beneficios) y así separa el dolor real de la suposición del equipo (cap. II, fase Definir). En Ricardo Alvarado, ese mapa reveló como dolores los tiempos de espera de 3 a 6 semanas, la ausencia de rollback y los datos alojados fuera de Claro.

**P4. ¿Cuándo te diste cuenta que ya se podía lanzar el MVP?**

Cuando las Historias de Usuario Must Have del MoSCoW pasaron la Definition of Done y el Product Owner las validó con el cliente. La Definition of Done exige build y tests pasando, deploy en el ambiente de QA y validación del PO con evidencia de los criterios de aceptación (cap. IV, 4.4). Esto se conecta con el Principio 7: el software funcionando es la medida principal de progreso.

**P5. ¿Qué herramientas usas para asegurarte que el cliente esté satisfecho?**

La Review semanal de los viernes con el representante del Área de Tecnología de Claro, donde se demuestra el software desplegado en QA (cap. III, 3.1). El Product Owner valida cada Historia de Usuario en esa sesión, en línea con el Valor 3 (colaboración con el cliente) y el Principio 7. Es la validación directa del cliente, no un reporte escrito de avance.

**P6. ¿A qué rubro está enfocado tu software?**

Telecomunicaciones. Claro Perú es la subsidiaria peruana de América Móvil, con más de 15 millones de clientes, y FLOWTEX es una plataforma inhouse desarrollada por Hitss Perú para su Área de Tecnología (cap. I, 1.1).

**P7. ¿Por qué es importante la empatía en el negocio?**

Para construir lo que el usuario realmente necesita y no lo que el equipo supone. Por eso, antes de cualquier decisión técnica, empatizamos con el administrador de TI mediante SPIN y el mapa de empatía (cap. II, 2.1). Esto respalda el Principio 1: la empatía previa al diseño garantiza que el software resuelve el problema real.

**P8. ¿Qué principio del manifiesto ágil utilizó para lanzar el MVP?**

El Principio 6: la conversación cara a cara es el método más eficiente de transmitir información. Lanzamos y validamos cada incremento en reuniones con pantalla compartida del ambiente de QA, donde el equipo de Claro interactúa directamente con las funcionalidades y detecta desviaciones en tiempo real (cap. I, 1.10.2). La validación visual es más efectiva que los reportes escritos.

**P9. Motivo por el cual priorizó para reducir la carga de trabajo:**

Para aplicar el Principio 10, la simplicidad: maximizar el trabajo no realizado. Con MoSCoW dejamos fuera del MVP toda funcionalidad de valor secundario y así el equipo no consume capacidad en lo que no aporta al reemplazo de NINTEX (cap. I, 1.8 y 1.10.2). Menos trabajo iniciado significa más valor terminado dentro del plazo.

**P10. ¿Quién decide qué funcionalidad se lanza en el primer MVP?**

El cliente, en colaboración con el Product Owner. El PO prioriza el backlog con MoSCoW y ajusta el alcance en las sesiones semanales con el Área de Tecnología de Claro (cap. I, 1.10.1, Valor 3). No es una decisión jerárquica: el cliente colabora en priorizar y el PO la traduce al backlog.

**P11. ¿Por qué decidiste usar enfoque ágil?**

Porque el contexto del problema es Complejo según Cynefin y requiere experimentación. No se conoce de antemano qué configuración exacta de formularios y flujos necesitará cada área ni qué comportamientos de NINTEX habrá que replicar en la migración, y la relación entre lo construido y el valor se entiende en retrospectiva (cap. I, 1.11.2). En ese dominio, un plan predictivo rígido fallaría, por eso adoptamos iteraciones cortas y entregas frecuentes.

**P12. ¿Qué herramienta te ayuda a decidir si usas ágil o predictivo?**

Cynefin, el marco de Dave Snowden. Clasifica el problema según la relación causa-efecto: nuestro caso es Complejo, donde la secuencia correcta es experimentar, sentir y responder, y eso justifica el enfoque ágil sobre el predictivo (cap. I, 1.11). Un enfoque cascada solo funcionaría en los dominios Claro o Complicado.

**P13. ¿Por qué es importante ser ágil para nuestro producto?**

Porque los requisitos del Área de Tecnología de Claro cambian con los procesos del negocio y debemos entregar valor antes de que el dolor crezca. Esto conecta el Valor 4 (responder al cambio sobre seguir un plan) con el Principio 1 (entrega temprana y continua de valor). El tablero Kanban se ajusta en cada período según la demanda real y los casos que revela la migración (cap. I, 1.10).

**P14. ¿Cuáles son los 5 pasos del Lean Inception aplicados a tu proyecto?**

Son: (1) Visión del producto, (2) Personas, (3) Journey, (4) Características y (5) Secuenciador con MVP Canvas (cap. II, 2.5). En FLOWTEX: la visión fue reemplazar NINTEX con una plataforma inhouse; las personas fueron Ricardo, Sofía y Ana; el journey mapeó del diseño del formulario al monitoreo; las características derivaron en las Historias de Usuario; y el secuenciador ordenó las Must Have en el MVP.

**P15. ¿Qué técnica de generación de ideas utilizaron?**

Round robin, donde cada integrante aporta una idea por turno para asegurar participación equitativa. Es la técnica que corresponde a nuestra fase actual, "Liberar de mando y control" (Norming), porque el turno rotativo refuerza las normas de participación ya acordadas (cap. II, 2.1). En la fase inicial (Forming) usamos escribir en silencio para evitar el sesgo de quien habla primero.

**P16. ¿Cómo decidieron la funcionalidad que saldría al MVP?**

Con MoSCoW, en colaboración con el cliente: solo las Historias de Usuario Must Have entraron al MVP. A nivel de visión son ocho (HU01, HU02, HU04, HU05, HU06, HU09, HU11, HU12), las que reemplazan el núcleo de NINTEX (cap. I, 1.8.1). La justificación es que sin ellas la migración sería inviable o generaría un riesgo operativo inaceptable.

**P17. ¿Cómo validas que tu MVP genera valor?**

Con la aceptación del Product Owner del cliente, Historia por Historia, en cada Review semanal (Valor 3 y Principio 7). Construimos exactamente las Historias que el cliente priorizó como Must Have del MoSCoW, es decir los dolores más críticos de su operación (cap. I, 1.8.3). Si me preguntan por el valor para los usuarios finales, respondo que esas Historias resuelven el pain point central del administrador de TI diagnosticado con SPIN.

---

## Sección 2. Tanda 2, preguntas adicionales del profe

**P18. ¿A quién va dirigido el software?**

A los administradores de TI de Claro Perú, que son los usuarios principales del módulo FormBuilder. Como usuarios secundarios están los solicitantes de todas las áreas y los aprobadores designados que interactúan con el FlowEngine (cap. I, 1.1.4).

**P19. ¿Qué herramientas de formación de equipos aplicaste?**

El Teams Canvas, un lienzo visual que define quiénes somos, qué hacemos y cómo trabajamos. Lo elaboramos en la sesión de kick-off y estableció las normas de trabajo y los acuerdos del equipo de Hitss para toda la duración del proyecto (cap. II, 2.4). Sirvió para alinear roles y normas desde el arranque.

**P20. ¿Cómo se logró empatizar con el usuario?**

Con una entrevista SPIN al administrador de TI de Claro, en la fase Empatizar del Design Thinking. SPIN estructura la conversación en Situación, Problema, Implicancia y Necesidad, lo que dejó ver que necesitaba autonomía para crear formularios en días sin depender de licencias externas (cap. II, 2.1). Luego procesamos lo escuchado en el mapa de empatía.

**P21. ¿Qué herramientas de lluvia de ideas ayudaron a llegar al software?**

Round robin y escribir en silencio (brainwriting). Escribir en silencio evita el sesgo de quien habla primero porque cada uno anota sus ideas antes de compartirlas, y el round robin asegura que todos aporten por turnos (cap. II, 2.1). El Scrum Master recibe y consolida las ideas, y luego se priorizan con dot voting y MoSCoW.

**P22. ¿Cuál es la secuencia de Lean Inception?**

Definir la visión y el objetivo, identificar a las personas, mapear el journey, derivar las características y, finalmente, secuenciarlas para construir el MVP con el MVP Canvas (cap. II, 2.5). Va de lo general (para quién es y qué es el producto) a lo concreto (qué se construye primero).

**P23. ¿Qué usaste, Lean Inception o Lean Startup?**

Ambas, pero en un orden deliberado: primero Lean Startup para construir y validar el primer MVP con la menor inversión, y luego Lean Inception para alinear al equipo y al cliente en la visión y planificar la siguiente iteración con mayor alcance (cap. II, 2.5). Lean Startup gobierna el descubrimiento del primer incremento y Lean Inception estructura la evolución posterior.

**P24. ¿Cómo se logró valor con el software?**

Con la aceptación del Product Owner en cada Review semanal, que confirma que cada Historia cumple sus criterios de aceptación en el ambiente de QA (Valor 3 y Principio 7). El valor se mide en software funcionando y validado por el cliente, no en documentos ni en horas trabajadas (cap. I, 1.10.2).

**P25. ¿Qué herramienta ayuda a no incomodar al usuario?**

El mapa de empatía, porque al entender qué piensa, siente, oye, ve, dice y hace el usuario, el equipo construye lo que necesita y no lo que le incomoda (cap. II, 2.1). Nos permitió diseñar la solución alrededor de sus dolores reales.

**P26. ¿Qué principio de los 12 ágiles utilizaste para tu proyecto / para hacer tu MVP?**

Para construir el MVP usé el Principio 10: la simplicidad, maximizar el trabajo no realizado, priorizando con MoSCoW solo lo esencial (cap. I, 1.10.2). Si la pregunta es sobre el lanzamiento, cito el Principio 6: la conversación cara a cara con el cliente en las Reviews con pantalla compartida del ambiente de QA.

**P27. ¿Cómo aplicaste Lean Inception en la solución?**

Construimos la declaración de visión, identificamos tres personas (Ricardo, Sofía y Ana), mapeamos el journey del administrador de TI, derivamos las Historias de Usuario y priorizamos las Must Have con MoSCoW para el secuenciador del MVP (cap. II, 2.5). Todo esto antes de escribir código, para alinear al equipo y al cliente en lo que se iba a construir.

**P28. ¿Cuál es la diferencia entre MoSCoW y SAFe?**

MoSCoW es cualitativo: ordena el backlog en Must, Should, Could y Won't según el criterio experto del Product Owner. SAFe es cuantitativo: usa la métrica WSJF (Weighted Shortest Job First), que divide el costo del retraso entre el tamaño del trabajo para priorizar con un número (cap. I, 1.8.4). Nosotros usamos MoSCoW como técnica principal por ser un equipo pequeño con backlog acotado, y reservamos WSJF como desempate cuantitativo dentro de una misma categoría.

**P29. ¿Solo con Design Thinking se puede crear un MVP? ¿Qué técnicas utilizas para crear un MVP?**

No, Design Thinking no basta por sí solo. Combinamos Design Thinking para la empatía y la definición del problema, Lean Startup con su ciclo Build-Measure-Learn para validar la hipótesis de valor, y MoSCoW para priorizar el backlog (cap. II, 2.1 y 2.5). Cada herramienta cubre una etapa distinta del descubrimiento y la construcción.

**P30. ¿Por qué utilizar métodos ágiles?**

Porque el contexto es Complejo según Cynefin y los requisitos del cliente cambian con sus procesos de negocio (cap. I, 1.11). El enfoque ágil institucionaliza la secuencia experimentar, sentir y responder mediante iteraciones cortas, entregas frecuentes y retrospectivas, que es lo adecuado cuando la relación causa-efecto solo se entiende en retrospectiva.

**P31. ¿Qué herramientas del curso te ayudaron a adaptarte al cambio?**

El tablero Kanban con clases de servicio (Urgente, Fecha fija, Estándar e Intangible), que permite reordenar la prioridad sin replanificar todo el tablero (cap. III, 3.2). Esto materializa el Valor 4 del manifiesto: responder al cambio sobre seguir un plan. Una Historia Urgente puede adelantar a una Estándar sin desestabilizar el flujo.

**P32. ¿Qué significa SMART en la práctica, para qué sirve?**

Significa Específico, Medible, Alcanzable, Relevante y con Tiempo definido. Sirve para que los objetivos sean verificables y no aspiraciones vagas: por ejemplo, nuestro objetivo de reducir el tiempo de creación de un formulario de 21 días a 2 días laborales tiene métrica, meta y plazo (cap. I, 1.7). Cada uno de los cinco objetivos del proyecto está redactado bajo ese marco.

**P33. ¿Cómo se priorizaron las funcionalidades?**

Con MoSCoW e ImpactPriority. ImpactPriority es nuestra combinación de las categorías MoSCoW con el mapa de impacto, para ordenar las Historias según su contribución directa a los procesos críticos del cliente (cap. II, 2.10). Se prioriza por valor de negocio e impacto en la operación de Claro, no por urgencia percibida.

**P34. ¿Para qué sirve cada sección de MoSCoW?**

Must es lo indispensable para el MVP, sin lo cual FLOWTEX no puede reemplazar a NINTEX. Should es importante pero no bloqueante para el primer despliegue. Could es deseable si el tiempo lo permite, y Won't queda explícitamente fuera del alcance del MVP actual y se registra para ciclos futuros (cap. I, 1.8.1).

**P35. ¿Cómo aplicaste la empatía con el cliente? ¿Con qué herramientas empatizas?**

Con SPIN durante las entrevistas y con el mapa de empatía para procesar lo escuchado (cap. II, 2.1). SPIN estructura el diálogo en Situación, Problema, Implicancia y Necesidad, y el mapa organiza al usuario en sus seis cuadrantes. Ambos pertenecen a la fase Empatizar del Design Thinking.

**P36. ¿Cómo comprendes el dolor del cliente? ¿Qué herramienta?**

Con el User Persona y el User Journey Map. El User Persona (Ricardo Alvarado) concentra objetivos y frustraciones, y el Journey Map recorre sus etapas mostrando el pensamiento y el punto de dolor en cada una, como la falta de vista previa o de dashboard de seguimiento (cap. II, 2.1). Así el dolor queda situado en el recorrido real del usuario.

**P37. ¿Qué herramientas te ayudan a comprender el problema del cliente?**

El FODA para cruzar fortalezas y debilidades internas con oportunidades y amenazas externas, el PEST para los factores del entorno (político, económico, social y tecnológico) y SPIN para las entrevistas (cap. I, 1.9 y cap. II, 2.1). Cada una aporta una capa distinta: entorno, posición estratégica y voz directa del usuario.

**P38. ¿Cuál es la secuencia básica para hacer el MVP?**

Empatizar, definir, idear, priorizar y construir. Empatizamos con SPIN, definimos con User Persona y POV, ideamos con las técnicas de brainstorming, priorizamos con MoSCoW y construimos las Must Have (cap. II, 2.1 y cap. I, 1.8). Se sigue este orden para construir lo correcto, lo que el cliente necesita, y no lo conveniente para el equipo.

**P39. ¿Qué herramientas utilizas para priorizar tareas?**

MoSCoW para priorizar el backlog y las clases de servicio Kanban para el día a día (cap. I, 1.8 y cap. III, 3.2). MoSCoW define qué entra al MVP y las clases de servicio (Urgente, Fecha fija, Estándar, Intangible) gestionan la prioridad dinámica de cada tarjeta en el flujo.

**P40. ¿Para qué sirve delimitar para qué es mi software y lo que NO hace mi software?**

Para alinear expectativas con el cliente y evitar el scope creep. Es la actividad "El producto ES, NO ES, HACE y NO HACE" del primer día del Lean Inception, que acota de forma explícita el alcance (cap. II, 2.5). En FLOWTEX quedó claro, por ejemplo, que no incluye dashboards de BI ni integración con ERP legacy en el MVP.

**P41. ¿Qué herramienta ayuda a no poner HU innecesarias en el MVP?**

MoSCoW, porque separa lo indispensable (Must) de lo que se puede posponer (Should, Could) o excluir (Won't). Esto respalda el Principio 10 de simplicidad: no cargar el MVP con funcionalidades que no aportan al reemplazo de NINTEX en el plazo definido (cap. I, 1.8.3).

**P42. Hay una etapa del Lean Inception donde se exponen las funcionalidades. ¿Por qué es importante exponerlas?**

Para alinear al equipo y al cliente en lo que se va a construir antes de escribir código. Es el Showcase del quinto día del Lean Inception, donde el equipo presenta a los interesados los resultados del taller (cap. II, 2.5). Exponerlas evita malentendidos costosos más adelante en el desarrollo.

**P43. ¿Por qué se tiene que hacer una review luego de terminar el MVP?**

Para validar con el cliente y recibir feedback antes de la siguiente iteración. La Review cierra el ciclo Build-Measure-Learn de Lean Startup: se construye, se mide con los KPIs y se aprende para ajustar el backlog (cap. II, 2.5). Sin esa validación no sabríamos si perseverar o pivotar.

**P44. ¿Cuándo se reúne con el cliente para determinar las HU? ¿Qué herramientas usas y por qué?**

En el refinamiento del backlog y en el Replenishment de los lunes, donde el Product Owner reabastece el backlog según el feedback de Claro (cap. III, 3.1). Uso MoSCoW para priorizar y SPIN para entender el dolor detrás de cada Historia. La combinación asegura que priorizamos por valor real y no por urgencia percibida.

**P45. ¿Qué contiene el prototipo desarrollado en el Design Thinking?**

Un wireframe del FormBuilder con tipos de campo básicos y un prototipo funcional del FlowEngine con un flujo de tres pasos y reglas condicionales (cap. II, 2.1, fases Idear y Prototipar). Entre las reglas, por ejemplo, si la prioridad es Urgente se escala directo al Gerente de TI, y si el monto es menor a S/. 5,000 el flujo es de un solo nivel.

**P46. ¿Para qué sirve el mapa de empatía?**

Para entender qué piensa y siente, qué oye, qué ve, qué dice y hace el usuario, además de sus esfuerzos o dolores y sus resultados o beneficios esperados (cap. II, 2.1). Esos seis cuadrantes convierten la escucha en una comprensión estructurada que guía el diseño de la solución.

**P47. ¿Qué herramienta hace que el software sea amigable? ¿Qué hace que el cliente crea que tu software es amigable?**

El prototipo validado con el usuario en la fase Testear del Design Thinking. Ejecutamos un plan de cinco tareas con administradores de TI y ajustamos lo que generó fricción, como la regla condicional que se rediseñó con un asistente guiado (cap. II, 2.1, fase Testear). El diseño UX centrado en el usuario, con retroalimentación visual inmediata, es lo que sostiene esa percepción de facilidad.

---

## Sección 3. Manifiesto Ágil (referencia para citar específico)

El profe valora un principio numerado puntual más una aplicación concreta, no frases genéricas. Valores: (1) Individuos e interacciones sobre procesos y herramientas; (2) Software funcionando sobre documentación exhaustiva; (3) Colaboración con el cliente sobre negociación de contratos; (4) Responder al cambio sobre seguir un plan. Principios más usados en FLOWTEX: Principio 1 (entrega temprana y continua de valor), Principio 3 (entregar software funcionando frecuentemente), Principio 6 (conversación cara a cara), Principio 7 (software funcionando como medida de progreso) y Principio 10 (simplicidad, maximizar el trabajo no realizado). Regla de uso: cita siempre el número del principio (cap. I, 1.10).

---

## Sección 4. Tuckman (vocabulario del profe)

**P48. ¿Cuáles son las 4 fases de Tuckman?**

Comprender el contexto (Forming), Capacitar (Storming), Liberar de mando y control (Norming) y Empoderar (Performing). El curso mapea cada fase de Tuckman a lo que hace el líder: dirige, enseña, delega y acompaña, respectivamente (cap. IV, 4.1).

**P49. ¿En qué fase está tu equipo hoy?**

En "Liberar de mando y control", que es la fase Norming. Las convenciones de código, el tablero Kanban con WIP limits y las cadencias ya están internalizadas, y el Scrum Master retiró la supervisión directa para dejar que las normas acordadas gobiernen el trabajo (cap. II, 2.3 y cap. IV, 4.1). La fase "Empoderar" (Performing), de autoorganización plena, es el estado objetivo aún en consolidación.

**P50. ¿Qué hace el líder en "Comprender el contexto"?**

Dirige y explica: presenta el problema del cliente y define los roles del equipo. En FLOWTEX, Omar facilitó el kick-off y Christopher presentó el contexto de Claro y el objetivo de reemplazar NINTEX (cap. IV, 4.1).

**P51. ¿Qué hace el líder en "Capacitar"?**

Capacita y aclara: media los conflictos técnicos y forma al equipo en las convenciones y decisiones. En esta fase se resolvió el debate de arquitectura y framework, y las decisiones se documentaron como ADRs, por ejemplo DDD más CQRS (cap. IV, 4.1).

**P52. ¿Qué hace el líder en "Liberar de mando y control"?**

Delega: deja de dirigir y empieza a facilitar, retirando la supervisión directa para que las normas acordadas gobiernen el trabajo. Omar introdujo la Definition of Done y Christopher consolidó el backlog ordenado por MoSCoW (cap. IV, 4.1).

**P53. ¿Qué hace el líder en "Empoderar"?**

Acompaña: el equipo se autoorganiza y decide de forma autónoma, y el líder solo remueve impedimentos y sostiene el ritmo. Es el estado objetivo, donde el propio equipo propone mejoras de proceso, como ajustar el WIP tras detectar un cuello de botella (cap. IV, 4.1).

**P54. ¿Qué señal te dice que pasaste a "Liberar de mando y control"?**

La señal fue completar la primera Historia de Usuario sin bloqueadores ni intervención directiva, HU01 (tipos de campo del FormBuilder). Ese hito evidenció que el equipo podía operar bajo sus propias normas sin mando y control constante, lo que habilitó al Scrum Master a delegar (cap. II, 2.3 y cap. IV, 4.1). En corto: las normas y convenciones ya están interiorizadas y no se renegocian.

**P55. ¿Por qué Tuckman?**

Para anticipar las fases del equipo y no estancarse en mando y control. Aplicamos intervenciones deliberadas del líder en cada fase, porque la progresión no es automática: sin esas intervenciones el equipo no alcanza la autonomía (cap. IV, 4.1). Hacer explícita la evolución del equipo lo convierte en una variable de gestión del proyecto.

---

## Sección 5. PDCA

**P56. ¿Qué significa PDCA?**

Plan, Do, Check, Act, es decir Planificar, Hacer, Verificar y Actuar. Es un lazo iterativo de cuatro etapas que se repite indefinidamente para institucionalizar la mejora basada en evidencia (cap. VI, 6.7).

**P57. ¿Quién creó el PDCA?**

Lo popularizó W. Edwards Deming, razón por la cual se conoce como ciclo de Deming, sobre la base del trabajo previo de Walter Shewhart (cap. VI, 6.7).

**P58. ¿En qué fase del PDCA está la retrospectiva?**

En la fase Check. Cada dos semanas el equipo recolecta las métricas del tablero (Lead Time, Throughput, tasa de re-trabajo, WIP) y evalúa qué funcionó con las herramientas por dimensión (cap. VI, 6.7).

**P59. ¿Y la planificación del sprint?**

En la fase Plan. El Sprint planning y el Replenishment son donde el Product Owner y el equipo seleccionan y priorizan las Historias del período con MoSCoW y estiman la capacidad disponible (cap. VI, 6.7).

**P60. ¿Y el desarrollo de las HU?**

En la fase Do. Es cuando el equipo construye las Historias en el tablero Kanban siguiendo el ciclo de diseño DDD, TDD, code review, deploy a QA y validación del PO (cap. VI, 6.7).

**P61. ¿Cómo aplicas el Act?**

Convirtiendo las conclusiones de la retrospectiva en acciones de mejora priorizadas con MoSCoW, registradas como Historias de Usuario de tipo chore con responsable y fecha, que se ejecutan en el período siguiente (cap. VI, 6.7). El Act alimenta el Plan del siguiente ciclo, y así se cierra el lazo.

**P62. ¿Para qué sirve el PDCA?**

Para la mejora continua del proceso con evidencia, no por intuición. Cada período de dos semanas se convierte en un experimento controlado del que se extraen conclusiones (cap. VI, 6.7). Le da al equipo un lenguaje común y una disciplina para mejorar de forma sistemática.

**P63. ¿Por qué PDCA en tu proyecto?**

Para mejorar el proceso sprint a sprint sin depender de la memoria del equipo. En FLOWTEX el PDCA no es una ceremonia extra: es la estructura que ordena las cadencias que ya ejecutamos, donde cada iteración de dos semanas equivale a una vuelta completa del ciclo (cap. VI, 6.7). Se apoya en el Principio 12 del manifiesto.

---

## Sección 6. Lean Startup

**P64. ¿Quién creó Lean Startup?**

Eric Ries, quien formuló el ciclo Build-Measure-Learn en su obra "The Lean Startup" (cap. II, 2.5).

**P65. ¿Cuál es el ciclo de Lean Startup?**

Crear, medir y aprender (Build-Measure-Learn). Se valida la hipótesis de negocio con el menor esfuerzo posible antes de comprometer recursos en la construcción completa (cap. II, 2.5).

**P66. ¿Para qué sirve el MVP?**

Para validar la hipótesis de valor con el cliente real con la menor inversión posible. En FLOWTEX el MVP prueba si el administrador de TI puede crear formularios de forma autónoma (cap. II, 2.5 y 2.6).

**P67. ¿Cuál es tu hipótesis principal?**

Que el administrador de TI puede crear formularios funcionales de forma autónoma, sin depender del proveedor, en menos de dos días y sin capacitación previa (cap. II, 2.5, fase Learn). Es la hipótesis de mayor riesgo del proyecto y por eso el MVP se enfocó en ella.

**P68. ¿Qué mides en el Measure?**

Tres KPIs principales: el tiempo de creación de formulario, la tasa de aprobación dentro del SLA y el NPS inicial de los administradores de TI de Claro (cap. II, 2.5, fase Measure). Son métricas con fórmula explícita para que la medición sea objetiva.

**P69. ¿Cuándo se pivota?**

Cuando el Measure refuta la hipótesis del Build. Nuestro mecanismo LearnPivot evalúa los KPIs del MVP al cierre de cada período para decidir si perseverar en la dirección actual o pivotar, siempre con base en evidencia cuantitativa y no en suposiciones (cap. VI, 6.6).

**P70. ¿Por qué Lean Startup?**

Para construir con el menor desperdicio posible, validando las hipótesis de mayor riesgo antes de invertir en la construcción completa. Conecta con el Principio 10 de simplicidad: no comprometer recursos en lo que no se ha validado (cap. II, 2.5 y 2.10).

---

## Sección 7. Lean Inception

**P71. ¿Quién creó Lean Inception?**

Paulo Caroli, quien lo formuló como un taller colaborativo orientado a construir el MVP correcto (cap. II, 2.5).

**P72. ¿Cuántos días dura un Lean Inception?**

Cinco días. Recorre de forma canónica cinco pasos que van de lo general a lo concreto, del primer día con la actividad "El producto ES, NO ES, HACE y NO HACE" al quinto día con el Showcase (cap. II, 2.5).

**P73. ¿Qué herramienta de Lean Inception usaste?**

El Product Vision Board, el lienzo con el que declaramos para quién es el producto, qué es y qué lo diferencia (cap. II, 2.5). Sobre esa base construimos la declaración de visión de FLOWTEX.

**P74. ¿Para qué sirve la visión del producto?**

Para alinear al equipo y al cliente en un objetivo compartido que sirva de norte durante todo el proyecto (cap. II, 2.5). Nuestra visión es una plataforma inhouse que reemplaza a NINTEX de forma autónoma, más rápida, con trazabilidad completa y sin costo de licencia externo.

**P75. ¿Quiénes son los personas de tu producto?**

Ricardo Alvarado, coordinador de plataformas de TI; Sofía Torres, solicitante del área de RRHH; y Ana Quispe, gerente de operaciones y aprobadora (cap. II, 2.5). Cada persona representa una necesidad distinta: crear formularios en días, enviar solicitudes y hacerles seguimiento, y aprobar desde Microsoft Teams.

**P76. ¿Qué es un MVP en Lean Inception?**

Es el conjunto mínimo de funcionalidades que prueba la visión del producto. En el secuenciador de Lean Inception, ese conjunto se sintetiza en el MVP Canvas (cap. II, 2.5).

**P77. ¿Por qué Lean Inception?**

Para construir la visión y el MVP antes de escribir código, alineando al equipo y al cliente en lo que se va a construir (cap. II, 2.5). Lo usamos para estructurar la evolución del producto después de validar el primer incremento con Lean Startup.

---

## Sección 8. Cynefin (decidir ágil vs predictivo)

**P78. ¿Qué herramienta te ayuda a decidir si usas ágil o predictivo?**

Cynefin, el marco de Dave Snowden que clasifica los problemas según la relación entre causa y efecto (cap. I, 1.11). Permite justificar, antes de elegir metodología, por qué el ágil resulta más adecuado que el predictivo en nuestro caso.

**P79. ¿En qué dominio de Cynefin está tu proyecto?**

En el dominio Complejo. La relación entre lo que se construye y el valor percibido solo se comprende en retrospectiva, que es el rasgo característico de ese dominio (cap. I, 1.11.2).

**P80. ¿Por qué Complejo?**

Porque no se conoce de antemano qué configuración exacta de formularios y flujos necesitará cada área, ni qué comportamientos de NINTEX habrá que replicar en la migración. Los requisitos evolucionan con los procesos del negocio y la migración revela casos no previstos que solo se entienden observando el uso real (cap. I, 1.11.2). Por eso avanzamos mediante experimentos que generan aprendizaje.

**P81. ¿Quién creó Cynefin?**

Dave Snowden, quien lo formuló a inicios de la década de 2000 durante su trabajo en IBM (cap. I, 1.11).

**P82. ¿Qué se hace en un contexto Complejo?**

Se experimenta, se siente y se responde. El equipo lanza un experimento acotado (un MVP o una Historia verificable en QA), siente su efecto a través del feedback del cliente y de los KPIs, y responde ajustando el backlog según lo aprendido (cap. I, 1.11.2).

---

## Sección 9. MoSCoW (priorización)

**P83. ¿Qué método usaste para priorizar?**

MoSCoW, complementado con ImpactPriority para ordenar por impacto en los procesos críticos del cliente (cap. I, 1.8 y cap. II, 2.10).

**P84. ¿Qué significa MoSCoW?**

Must Have, Should Have, Could Have y Won't Have: lo indispensable, lo importante no bloqueante, lo deseable y lo que queda fuera del alcance del MVP (cap. I, 1.8.1).

**P85. ¿Cuántas HU tiene tu Must Have?**

Ocho a nivel de la visión del producto: HU01, HU02, HU04, HU05, HU06, HU09, HU11 y HU12 (cap. I, 1.8.1). Ese conjunto enuncia el "qué" imprescindible para reemplazar a NINTEX. En el backlog operativo del capítulo III esa visión se descompone en cerca de dieciocho Historias Must Have ejecutables, renombradas por bounded context, que son las unidades reales de trabajo del tablero: no hay contradicción, es la granularidad ejecutable de la visión.

**P86. ¿Por qué dejaste algo en Won't Have?**

Para aplicar el Principio 10 de simplicidad y no sobrecargar el MVP con funcionalidades que no son necesarias para reemplazar a NINTEX (cap. I, 1.8.1 y 1.8.3). Lo Won't Have se registra en el backlog para ciclos futuros, no se descarta.

**P87. ¿Qué HU dejaste como Won't Have?**

La reportería ejecutiva avanzada, los dashboards de BI y la integración con sistemas ERP legacy (cap. I, 1.8.1). Generan valor estratégico a largo plazo, pero no son necesarias para el MVP que reemplaza el núcleo de NINTEX.

---

## Sección 10. Kanban y Ley de Little

**P88. ¿Qué método de trabajo usaste?**

Kanban con WIP limits, en su variante STATIK, que diseña el sistema desde la demanda del cliente hacia la capacidad del equipo (cap. IV, 4.2). El tablero se organiza en swim lanes por bounded context, cada una con su WIP limit.

**P89. ¿Cuál es la fórmula de la Ley de Little?**

Lead Time igual a WIP dividido entre Throughput (cap. III, 3.5 y cap. V, 5.2). Permite proyectar el tiempo de entrega esperado a partir de dos variables medibles en el tablero en tiempo real.

**P90. ¿Para qué sirve el WIP limit?**

Para evitar que el equipo inicie más trabajo del que puede terminar, lo que dispara el Lead Time de forma no lineal. Un equipo de cinco personas sin límite de WIP acumula trabajo incompleto; el WIP limit garantiza terminar lo comenzado antes de iniciar lo nuevo (cap. I, 1.10.2 y cap. V, 5.2).

**P91. ¿Cuál es el lema del Kanban?**

"Stop starting, start finishing": completar el trabajo en curso es más valioso que iniciar trabajo nuevo (cap. V, 5.2 y 5.3). Es la regla que aplicamos cuando una columna supera su WIP limit.

**P92. ¿Cuántos miembros tiene tu equipo?**

Cinco integrantes de Hitss Perú: Christopher (Product Owner y Backend), Angello (Frontend y UX-UI), Milagros (Data Scientist), Jose (Backend) y Omar (Scrum Master) (cap. I, 1.2.1).

**P93. ¿Cuánto dura un sprint?**

Dos semanas. El equipo entrega funcionalidades verificables en QA cada dos semanas y cierra el período con una retrospectiva quincenal (cap. I, 1.10.2 y cap. III, 3.1).

**P94. ¿Qué cadencias tiene tu equipo?**

Daily standup de 15 minutos todos los días, Replenishment Meeting los lunes, Review semanal los viernes con el representante de Claro y retrospectiva cada dos semanas (cap. III, 3.1). Las cadencias son compromisos fijos del equipo, no se negocian semana a semana.

---

## Sección 11. Definition of Done / Ready

**P95. ¿Cuál es tu Definition of Done?**

Que el build del backend y del frontend pase, el typecheck y el lint pasen, los tests relevantes estén escritos y pasando con cobertura de al menos 80%, el deploy en el ambiente de QA sea exitoso y el Product Owner valide con evidencia de los criterios de aceptación (cap. IV, 4.4). Cualquier Historia que no cumpla esto no cuenta como progreso.

**P96. ¿Cuál es tu Definition of Ready?**

Que la Historia tenga criterios de aceptación en formato Given-When-Then completos y verificables, con al menos dos escenarios, esté descrita como "Como rol, quiero funcionalidad, para beneficio", tenga trazabilidad a los archivos del repositorio, esté estimada y priorizada con MoSCoW, y sus dependencias estén identificadas (cap. IV, 4.4). Esto evita empezar Historias ambiguas y reduce el re-trabajo.

---

## Sección 12. Design Thinking (identificar dolores)

**P97. ¿Cuáles son las 5 fases del Design Thinking?**

Empatizar, definir, idear, prototipar y testear (cap. II, 2.1). El equipo recorrió las cinco antes de proponer cualquier solución técnica.

**P98. ¿Qué técnica usaste para empatizar?**

SPIN, con sus cuatro tipos de pregunta: Situación, Problema, Implicancia y Necesidad (cap. II, 2.1, fase Empatizar). La aplicamos en la entrevista al administrador de TI de Claro para diagnosticar el problema desde su perspectiva.

**P99. ¿Qué hiciste en la fase definir?**

Construí el User Persona y el Point of View, apoyados en el mapa de empatía (cap. II, 2.1, fase Definir). El POV resume que Ricardo necesita autonomía para crear formularios sin depender de NINTEX, porque cada semana de espera le cuesta credibilidad ante las áreas internas.

**P100. ¿Quién es tu User Persona?**

Ricardo Alvarado, de 34 años, coordinador de plataformas de TI en Claro Perú, Lima (cap. II, 2.1). Sus objetivos son la autonomía operativa, la trazabilidad completa y eliminar la dependencia de proveedores externos.

---

## Sección 13. PEST / análisis de entorno

**P101. ¿Qué significa PEST?**

Político, Económico, Social y Tecnológico (cap. I, 1.9). Son las cuatro dimensiones del entorno que analizamos.

**P102. ¿Por qué PEST?**

Para identificar los factores externos que impactan la viabilidad y el valor estratégico de FLOWTEX (cap. I, 1.9). Por ejemplo, en lo político la regulación de OSIPTEL y la soberanía de datos, en lo económico el costo de NINTEX superior a S/. 400,000 anuales, en lo social la adopción de Microsoft Teams, y en lo tecnológico la infraestructura cloud de América Móvil.

---

## Estrategia de defensa (recordatorio)

Si no sabes qué responder, no uses frases vagas: reconoce y deriva a una herramienta del sílabo. Validación va a la Review con el PO; priorización a MoSCoW más clases de servicio Kanban; cambios al backlog con priorización dinámica; equipo a Tuckman "Liberar de mando y control"; contexto a Cynefin Complejo. Nunca digas "el jefe decide" ni "el cliente nos dijo qué hacer" (dilo como "el cliente colaboró en priorizar"), ni cites números que no mediste. Di siempre "el equipo autónomo decidió", "el cliente en colaboración con el Product Owner" y "aplicando el Principio N del manifiesto" con el número.
