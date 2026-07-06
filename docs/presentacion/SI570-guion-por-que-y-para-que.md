# SI570 · Guion paso a paso del flujograma maestro

> Para cada paso y concepto del flujograma, este guion responde dos preguntas: **¿por qué lo hacemos?** y **¿para qué sirve?**. Pensado para que cualquier miembro del equipo lo lea y pueda defender el flujograma sin tener que memorizar nada.

---

## Cómo usar este guion

Antes de la expo, repasa de adelante hacia atrás. Cada bloque tiene tres partes:

- **Qué es:** una frase que define el concepto.
- **Por qué lo hacemos:** el problema o necesidad que justifica el paso.
- **Para qué sirve:** el resultado o entregable concreto que aporta.
- **Cómo se ve en FLOWTEX:** el caso aplicado al proyecto.

---

## Punto de partida (INI): Claro paga 400 mil soles al año

**Qué es:** un planteamiento del problema económico que justifica todo el proyecto.

**Por qué lo hacemos:** un proceso de creación de producto no nace por capricho. Nace de un dolor económico real. Si nadie está perdiendo dinero o tiempo, no hay proyecto.

**Para qué sirve:** para anclar todo el flujograma a una promesa de ahorro o ingreso. Cada paso del flujo debe responder al norte de este punto de partida.

**Cómo se ve en FLOWTEX:** Claro paga cuatrocientos mil soles al año por la plataforma actual (NINTEX) y espera entre tres y seis semanas por cada formulario nuevo. Eso es lo que vinimos a apagar.

---

## Por qué un enfoque ágil (Cynefin)

**Qué es:** un marco de Dave Snowden que clasifica los problemas en cuatro dominios (Claro, Complicado, Complejo y Caótico) para elegir cómo abordarlos.

**Por qué lo hacemos:** antes de decidir cómo trabajar, hay que saber en qué tipo de problema estamos. Un problema predecible se planifica de una vez, uno cambiante se explora por iteraciones.

**Para qué sirve:** para justificar por qué usamos un enfoque ágil y no uno predictivo (cascada).

**Cómo se ve en FLOWTEX:** el proyecto está en el dominio Complejo, porque los requisitos de los formularios de Claro evolucionan y no se conocen por completo al inicio. En ese dominio la receta es experimentar, sentir y responder, que es el trabajo iterativo del agilismo. Por eso elegimos ágil.

---

## Paso 1: Comprender el contexto del producto (Porter, FODA, PEST)

**Qué es:** un análisis del entorno externo e interno del producto, usando tres herramientas distintas.

**Por qué lo hacemos:** antes de construir, hay que saber dónde estamos parados. Si no entiendes el contexto, construyes algo que el mercado no necesita o que la competencia ya ofrece mejor.

**Para qué sirve:** para mapear quién es el cliente, quiénes son los proveedores, quién compite, qué fuerzas externas presionan (políticas, económicas, sociales, tecnológicas) y qué oportunidades reales hay.

**Las tres herramientas que usamos:**

- **5 fuerzas de Porter:** analiza cinco actores del entorno: clientes, proveedores, competencia directa, productos sustitutos y nuevos entrantes. Para cada uno se identifica qué oportunidad y qué amenaza representa.
- **FODA:** interno (Fortalezas y Debilidades) y externo (Oportunidades y Amenazas). Es el resumen estratégico.
- **PEST:** factores externos (Políticos, Económicos, Sociales y Tecnológicos).

**Cómo se ve en FLOWTEX:** el cliente es el área de Tecnología de Claro Perú. El proveedor problemático es la plataforma actual con su licencia cara. La competencia indirecta son Google Forms y plataformas similares. La tecnología (inteligencia artificial generativa) abre una oportunidad nueva que no existía hace dos años.

---

## Paso 2: Madurar al equipo en las cuatro fases de Tuckman

**Qué es:** asegurar que el equipo atravesó las cuatro fases que Bruce Tuckman describió en 1965 para todo equipo nuevo.

**Por qué lo hacemos:** un equipo nuevo no produce calidad de un día para otro. Si se le exige al equipo trabajar como si fueran veteranos cuando recién se conocen, el resultado va a ser malo.

**Para qué sirve:** para saber qué se le puede exigir al equipo en cada momento y qué herramientas se pueden aplicar según su nivel de confianza.

**Las cuatro fases:**

- **Forming (formación, "Comprender el contexto"):** el equipo recién se conoce. Comprende el contexto del cliente y de las personas que van a usar el producto. Hay incertidumbre.
- **Storming (tormenta, "Capacitar"):** el equipo se capacita y choca. Hay debates técnicos y colaborativos.
- **Norming (norma, "Liberar de mando y control"):** el equipo acuerda las reglas. Se libera el mando y control desde la jefatura y se establecen objetivos SMART.
- **Performing (alto rendimiento, "Empoderar"):** el equipo opera autónomamente con pensamiento crítico. Ya no necesita supervisión cercana.

**Cómo se ve en FLOWTEX:** el equipo Hitss arrancó en Forming en el kick-off y cerró Storming al acordar la arquitectura del producto. Hoy opera en Norming ("Liberar de mando y control"), con las políticas del tablero y de pruebas ya interiorizadas. Performing ("Empoderar") es el estado objetivo hacia el que evoluciona, todavía en consolidación.

---

## Paso 3: Formular el objetivo SMART

**Qué es:** un objetivo redactado con cinco propiedades verificables.

**Por qué lo hacemos:** un objetivo vago no se puede cumplir ni medir. *"Mejorar los formularios"* no es un objetivo, es un deseo. SMART obliga a aterrizar.

**Para qué sirve:** para que el equipo sepa exactamente qué hay que entregar, cómo se medirá si se cumplió, si es realista, si aporta valor, y para cuándo.

**Las cinco propiedades:**

| Letra | Significa | Lo que exige |
|---|---|---|
| **S** | Específico | Concreto y claro, sin ambigüedad |
| **M** | Medible | Tiene una métrica o indicador asociado |
| **A** | Alcanzable | El equipo tiene los recursos y la capacidad |
| **R** | Relevante | Aporta valor real al cliente o al negocio |
| **T** | Temporal | Tiene fecha límite |

**Cómo se ve en FLOWTEX:** *"Reemplazar la plataforma actual con un producto interno que reduzca el tiempo de creación de formulario de tres semanas a dos días laborales, antes del corte de licencia del próximo año, demostrable con métricas medidas en Kanban."*

---

## Paso 4: Empatizar con el cliente (Design Thinking, etapa 1)

**Qué es:** ponerse en los zapatos del cliente y de los usuarios que van a usar el producto.

**Por qué lo hacemos:** si construyes desde tu cabeza y no desde la del cliente, el producto no le va a servir aunque sea técnicamente perfecto.

**Para qué sirve:** para entender quién es la persona que sufre el problema, qué tareas necesita hacer, qué miedos tiene y qué restricciones reales enfrenta.

**Cómo se ve en FLOWTEX:** entrevistamos al administrador de Tecnología de Claro y al solicitante de negocio. Construimos la persona: *"colaborador no técnico que sabe qué información necesita pedir, pero no sabe cómo armar un formulario, y depende del equipo de Tecnología para cada cambio".*

---

## Paso 5: Definir la idea (Design Thinking, etapa 2)

**Qué es:** redactar el problema del cliente como un dolor concreto, no como una generalidad.

**Por qué lo hacemos:** *"el cliente quiere mejor experiencia"* no es un problema definido. *"El cliente tarda tres semanas en publicar un formulario porque depende del equipo de Tecnología"* sí lo es.

**Para qué sirve:** para tener un contrato claro de qué problema vamos a resolver. Sin definición, no hay solución medible.

**Cómo se ve en FLOWTEX:** dolor concreto: *"el solicitante no técnico depende del equipo de Tecnología para crear un formulario, lo cual toma tres a seis semanas y cuesta una licencia anual cara".*

---

## Primera decisión del flujo: ¿En qué fase de Tuckman está el equipo al idear?

**Qué es:** una decisión que elige la herramienta de ideación según la madurez del equipo.

**Por qué lo hacemos:** las herramientas de ideación no son intercambiables. Una herramienta que sirve a un equipo tímido apaga a un equipo maduro, y al revés.

**Para qué sirve:** para que el equipo elija la herramienta que más ideas produce según el contexto del equipo, no según el gusto del facilitador.

**Las tres herramientas y cuándo aplicarlas:**

### Escribir en silencio (cuando el equipo está en Forming)

- **Qué es:** cada miembro escribe ideas en silencio durante un tiempo definido y luego se comparten.
- **Por qué se usa en Forming:** el equipo todavía no se conoce. Los miembros tímidos no se animan a hablar. Escribir nivela el aporte.
- **Para qué sirve:** para que todas las voces aporten, incluso las más calladas.

### Round Robin (cuando el equipo está en Norming)

- **Qué es:** cada miembro aporta una idea por turno hasta agotar las ideas.
- **Por qué se usa en Norming:** el equipo ya tiene confianza intermedia. Hay reglas acordadas. El turno respeta a todos.
- **Para qué sirve:** para evitar que los más conversadores monopolicen la sesión.

### Free for All (cuando el equipo está en Performing)

- **Qué es:** discusión libre en paralelo, sin turnos, sin reglas.
- **Por qué se usa en Performing:** el equipo es autónomo y no necesita estructura para participar. Todos opinan sin miedo.
- **Para qué sirve:** para producir muchas ideas rápido cuando ya hay confianza total.

**Cómo se ve en FLOWTEX:** el equipo está en Norming ("Liberar de mando y control"), así que en las sesiones de ideación aplicamos Round Robin, que le da el turno a cada miembro y evita que los más conversadores monopolicen.

---

## Paso 6: Idear (Design Thinking, etapa 3)

**Qué es:** generar y filtrar ideas para resolver el problema definido en el paso 5.

**Por qué lo hacemos:** una sola idea es una apuesta arriesgada. Muchas ideas filtradas dan más probabilidad de encontrar la buena.

**Para qué sirve:** para producir un pool de ideas que después se traducen en funcionalidades candidatas del producto. Cada oportunidad detectada en el paso 1 (FODA / PEST / Porter) se vuelve una funcionalidad potencial.

**Cómo se ve en FLOWTEX:** del pool de ideas salieron el constructor visual de formularios, el asistente con inteligencia artificial, el flujo de aprobación configurable, las notificaciones a aprobadores y la trazabilidad con audit log.

---

## Paso 7: Redactar las historias de usuario

**Qué es:** convertir cada funcionalidad candidata en una historia escrita con un formato verificable.

**Por qué lo hacemos:** una funcionalidad sin historia no se puede estimar, ni asignar, ni probar. La historia es la unidad de trabajo del equipo.

**Para qué sirve:** para que cada funcionalidad tenga un dueño (rol), un objetivo (lo que quiere) y un beneficio (para qué), más criterios de aceptación que digan cuándo está terminada.

**Dos tipos de historias:**

- **Historias buenas (positivas):** describen lo que el cliente sí quiere. *"Como administrador, quiero crear un formulario, para no depender del equipo de Tecnología".*
- **Historias en contra (negativas):** describen lo que el cliente quiere evitar. *"Como administrador, no quiero que los datos del formulario viajen sin cifrar, porque la ley de protección de datos lo exige".*

**Por qué importan las dos:** las historias buenas describen el éxito; las historias en contra describen lo que sería un fracaso. Ambas tienen que estar cubiertas.

**Cómo se ve en FLOWTEX:** el backlog tiene 36 historias positivas (creación de formularios, aprobaciones, notificaciones) y un set de historias en contra (no exponer datos sin cifrar, no depender de un solo proveedor de IA, no obligar al usuario a esperar al equipo de Tecnología).

---

## Paso 8: Priorizar el backlog con SAFe MoSCoW

**Qué es:** ordenar las historias del backlog en cuatro grupos según importancia.

**Por qué lo hacemos:** no se puede entregar todo a la vez. Hay que decidir qué se entrega primero y qué queda para después.

**Para qué sirve:** para tener un backlog ordenado donde el equipo siempre toma la historia más prioritaria primero.

**Los cuatro grupos:**

| Letra | Significa | Qué historias van aquí |
|---|---|---|
| **M** | Must (debe) | Sin esto no hay producto. Es el bloque del MVP. |
| **S** | Should (debería) | Importante, pero el producto funciona sin esto en la primera versión. |
| **C** | Could (podría) | Bueno tener, pero no urgente. |
| **W** | Won't (no será) | No entra en esta versión. Queda fuera explícitamente. |

**Por qué se llama SAFe MoSCoW:** porque MoSCoW se popularizó dentro del marco SAFe (Scaled Agile Framework) para coordinar múltiples equipos sobre un mismo backlog.

**Cómo se ve en FLOWTEX:** las 36 historias se clasificaron y el bloque Must Have es lo que entra al MVP. Las Should y Could quedan en reserva, esperando reacción del cliente.

---

## Paso 9: Liberar el MVP (acta de constitución, promesa de trabajo futuro)

**Qué es:** entregar el producto mínimo viable al cliente. **El MVP es el acta de constitución del producto: una promesa de trabajo futuro hacia el cliente.**

**Por qué lo hacemos:** no se puede esperar a tener el producto perfecto para entregarlo. Mientras se espera, no se aprende. El MVP entrega lo mínimo que ya genera valor y abre el ciclo de aprendizaje.

**Para qué sirve:** para que el cliente pruebe el producto, dé feedback real, y el equipo aprenda. Sin un MVP entregado, el equipo está adivinando.

**Por qué se llama "acta de constitución":** porque, igual que un acta de constitución de una empresa, el MVP **firma una promesa de trabajo futuro entre el equipo y el cliente**. No es el producto terminado: es el acuerdo escrito de que se va a ir construyendo.

**Cómo se ve en FLOWTEX:** del backlog se liberó únicamente el bloque Must Have: autenticación corporativa, constructor visual de formularios, flujo de aprobación, persistencia con auditoría. Las funcionalidades Should y Could quedaron en reserva.

---

## Paso 9b: Capacidad de inteligencia artificial dentro del MVP

**Qué es:** un asistente con inteligencia artificial generativa que convierte lo que el solicitante describe en palabras en una estructura de formulario lista para usar.

**Por qué lo hacemos:** porque el dolor identificado en el paso 5 (definir la idea) era que el solicitante no técnico depende del equipo de Tecnología. **Sin la inteligencia artificial, el MVP no resuelve el problema raíz que lo justifica.**

**Para qué sirve:** para que el solicitante describa en lenguaje natural el proceso que quiere capturar, y el asistente le proponga los campos del formulario en segundos.

**Analogía simple:** es como Google Maps para formularios. Antes necesitabas a alguien que conociera el camino; ahora le dices el destino y la aplicación arma la ruta. La inteligencia artificial **no reemplaza al chofer, reemplaza la dependencia de un experto que sepa el camino**.

**Cómo se ve en FLOWTEX:** el solicitante describe *"necesito capturar reembolsos de viaje con monto, fecha, motivo y comprobante"* y el asistente le devuelve los campos sugeridos en menos de un segundo. Si el proveedor externo no responde, una lógica interna de respaldo igual entrega sugerencias razonables.

---

## Paso 10: Testear y medir el MVP con el cliente

**Qué es:** entregar el MVP al cliente para que lo pruebe en un ambiente de pruebas y nos devuelva su reacción.

**Por qué lo hacemos:** el MVP sin pruebas reales es solo una hipótesis. Hasta que el cliente no lo usa, no sabemos si sirve.

**Para qué sirve:** para validar si el producto resuelve el dolor definido en el paso 5, y para recolectar datos que después alimentan el aprendizaje.

**Este paso cubre dos marcos a la vez:**

- **Etapa 5 del pentágono de Design Thinking: Testear.** El usuario prueba el producto.
- **Paso "Medir" del ciclo Lean Startup (Crear · Medir · Aprender).** Se miden indicadores objetivos del uso.

**Cómo se ve en FLOWTEX:** el cliente prueba el producto en el ambiente de pruebas, y se mide cuánto tarda en crear un formulario (lead time), cuántos formularios crea sin pedir ayuda y cuántas sugerencias del asistente acepta o descarta.

---

## Paso 11: Aprender e iterar con Lean Inception

**Qué es:** un método de Paulo Caroli (2018) que comprime el descubrimiento de una nueva característica en cinco días.

**Por qué lo hacemos:** cada nueva característica del producto no necesita repetir todo el proceso de Design Thinking desde cero. Si el contexto general ya es conocido, podemos acelerar.

**Para qué sirve:** para no perder tiempo en redescubrir lo ya descubierto, y para entregar nuevas épicas al backlog en una semana.

**Las cinco etapas en cinco días:**

1. **Visión del producto:** qué problema resuelve y para quién.
2. **Persona:** actualización del usuario objetivo.
3. **Stack lógico:** cómo se conectan las piezas.
4. **Mapa de funcionalidades por valor y esfuerzo:** qué entrega más con menos.
5. **Lanzamiento controlado:** primero a pruebas, después a producción.

**Este paso es el "Aprender" del ciclo Lean Startup.** El feedback del paso anterior (testear y medir) se procesa aquí y produce las próximas características del producto.

**Cómo se ve en FLOWTEX:** después de validar el MVP con autenticación + constructor + workflow, las próximas épicas (notificaciones por correo y reportes de auditoría) entran a Lean Inception cada una.

---

## Segunda decisión del flujo: ¿Qué tipo de problema aparece en el sprint?

**Qué es:** una decisión que elige la técnica de retrospectiva según el tipo de problema que aparece durante el sprint.

**Por qué lo hacemos:** las técnicas de retrospectiva no son intercambiables. Cada una sirve para un tipo distinto de problema. Aplicarlas todas a la vez sería redundante.

**Para qué sirve:** para diagnosticar antes de remediar. La técnica correcta depende de qué problema apareció, no del gusto del facilitador.

**Las tres técnicas y cuándo aplicarlas:**

### Recordar el futuro (cuando hay riesgos del trabajo por venir)

- **Qué es:** una técnica donde el equipo imagina que el sprint terminó mal y reconstruye qué habría fallado.
- **Por qué se usa:** es un "pre-mortem". Anticipa los riesgos antes de que se materialicen.
- **Para qué sirve:** para descubrir riesgos invisibles del próximo sprint.

### Podar el árbol (cuando hay nuevas funcionalidades sobre el MVP)

- **Qué es:** se dibuja el tronco (el MVP estable) y las ramas (las funcionalidades posibles), y se decide cuáles ramas podar y cuáles dejar crecer.
- **Por qué se usa:** cuando el producto ya está estable y aparecen muchas ideas nuevas, hay que decidir cuáles vale la pena perseguir.
- **Para qué sirve:** para no acumular funcionalidades sin foco y mantener el producto coherente.

### Lancha rápida (cuando hay fricción interna del equipo)

- **Qué es:** se dibuja una lancha y se identifican qué cosas la impulsan hacia adelante (lo que funciona) y qué cosas la anclan (lo que frena al equipo).
- **Por qué se usa:** cuando el problema no es técnico, sino del equipo trabajando junto.
- **Para qué sirve:** para resolver fricciones internas que un análisis técnico no detectaría.

**Cómo se ve en FLOWTEX:** si el próximo sprint promete riesgos (por ejemplo, depender de un cambio de la API de mensajería), se aplica Recordar el futuro. Si el MVP ya está estable y aparecen mejoras posibles, se aplica Podar el árbol. Si el equipo está discutiendo demasiado sin avanzar, se aplica Lancha rápida.

---

## Paso 12: Operar el tablero Kanban

**Qué es:** una forma de trabajar donde el trabajo se visualiza en un tablero con columnas y se limita cuántas tareas se hacen al mismo tiempo.

**Por qué lo hacemos:** sin un tablero visible, el trabajo del equipo se vuelve invisible. Sin un límite de tareas en curso, el equipo trabaja diez cosas a la vez y no termina ninguna.

**Para qué sirve:** para que todo el equipo y los stakeholders sepan en qué estado está cada historia, y para que el equipo no se sature de trabajo simultáneo.

**Tres reglas básicas:**

1. **Visualizar el trabajo:** todo lo que el equipo hace está en una tarjeta del tablero.
2. **Limitar las tareas en curso:** si el límite es 3 en la columna "En proceso", no se puede agregar la cuarta hasta que una pase a Terminado.
3. **Jalar, no empujar:** cuando alguien termina una tarea, él mismo toma la siguiente; nadie le asigna por arriba.

**Analogía simple:** es como una cocina de restaurante. Si el cocinero tiene veinte pedidos a la vez, ninguno sale rápido. Si se limita a cinco, salen ordenados.

**Cómo se ve en FLOWTEX:** el equipo se impuso un límite de tres historias en curso. Las 36 historias del backlog no se empezaron todas a la vez.

---

## Paso 13: Medir el ritmo con la Ley de Little

**Qué es:** una fórmula que dice que el tiempo de entrega de una tarea depende de cuántas tareas estamos trabajando al mismo tiempo.

**Por qué lo hacemos:** sin medir el ritmo, el equipo no sabe si va más rápido o más lento, y no puede ajustar.

**Para qué sirve:** para tener tres indicadores que regulan el ritmo y se realimentan a los objetivos del próximo ciclo.

**La fórmula en simple:**

> Tareas en curso = Velocidad × Tiempo de entrega

**Los tres indicadores que medimos:**

| Indicador | Qué responde |
|---|---|
| **Tiempo de entrega** | ¿En cuánto tiempo entregamos una nueva característica al cliente? |
| **Velocidad del equipo** | ¿Cuántas historias terminamos por iteración? |
| **Tasa de bloqueo** | ¿Cuántas historias se quedaron paradas esperando algo externo? |

**Analogía simple:** una autopista. Si hay cien autos en un kilómetro, todos van a cinco kilómetros por hora. Si se limita a treinta, todos van a ochenta. **Menos autos al mismo tiempo, todos van más rápido.**

**Cómo se ve en FLOWTEX:** si el tiempo de entrega sube, el equipo tiene demasiadas historias en paralelo y debe bajar el límite. Si la velocidad cae, hay bloqueos externos que atender. Si la tasa de bloqueo crece, el equipo lo lleva a Lancha rápida.

---

## Las tres flechas de retroalimentación (lo que cierra el ciclo)

> Estas son las flechas punteadas del flujograma. Son lo que convierte una línea en un ciclo de mejora continua.

### Flecha 1: Las métricas del paso 13 realimentan los objetivos del paso 3

**Qué dice:** si la velocidad del equipo cae o el tiempo de entrega sube, **se ajusta el plazo del objetivo SMART** antes de comprometer alcance nuevo.

**Por qué importa:** porque no se le miente al cliente con una fecha que el dato dice que no vamos a cumplir.

### Flecha 2: El producto verificable realimenta el contexto del paso 1

**Qué dice:** lo aprendido durante la operación en producción **reabre el análisis del contexto** del próximo ciclo. El análisis FODA / PEST / Porter no es de una vez para siempre: se actualiza con lo aprendido.

**Por qué importa:** porque el mercado cambia, el cliente cambia, la competencia cambia. Si el contexto no se actualiza, el siguiente producto se construye con información obsoleta.

### Flecha 3: La inteligencia artificial ataca directamente las semanas de espera del paso 5

**Qué dice:** la capacidad de inteligencia artificial del paso 9b **cierra el bucle** con el dolor que se definió en el paso 5. La solución no flota suelta: vuelve directamente al problema que la justifica.

**Por qué importa:** porque demuestra que cada parte del flujograma está atada a una pieza de la otra. **Si quitas la inteligencia artificial, el MVP deja de resolver el dolor original.**

---

## El cierre: Producto verificable, siguiente vuelta del ciclo

**Qué es:** el punto donde el producto está demostrable y el equipo entra a una nueva vuelta del proceso.

**Por qué importa:** porque **el flujograma no termina, vuelve a empezar.** Cada ciclo aprende más del cliente, del equipo y del mercado.

**Para qué sirve:** para dejar claro que el producto no es estático: es un sistema vivo que mejora con cada iteración.

---

## El ciclo completo es un PDCA (Deming, base Shewhart)

**Qué es:** el ciclo de mejora continua Planificar, Hacer, Verificar y Actuar, que popularizó Edwards Deming sobre la base de Walter Shewhart.

**Por qué importa:** demuestra que el flujograma no es una secuencia suelta de pasos, sino un ciclo de mejora reconocido.

**Cómo se ve en FLOWTEX:** todo el flujograma es un PDCA. Plan es el sprint planning donde priorizamos el backlog con MoSCoW. Do es el desarrollo de las historias de usuario. Check son las métricas de la Ley de Little y la retrospectiva. Act son las mejoras que aplicamos en el siguiente sprint. Las tres flechas de retroalimentación son ese PDCA hecho visible: el proceso planifica, hace, verifica, ajusta, y vuelve a empezar.

---

## La frase de cierre para sacar el 20

> *"El flujograma maestro de FLOWTEX no es una serie de cajas conectadas con flechas. Cada paso tiene su porqué (el problema que resuelve) y su para qué (el resultado que entrega).*

> *Elegimos un enfoque ágil porque el problema es del dominio Complejo de Cynefin. Empezamos con un problema económico de cuatrocientos mil soles al año. Lo aterrizamos con Porter, FODA y PEST. Maduramos al equipo con Tuckman. Formulamos un objetivo SMART. Empatizamos y definimos el problema con Design Thinking. Ideamos eligiendo la herramienta según la madurez del equipo. Redactamos historias buenas y en contra. Priorizamos con SAFe MoSCoW. Liberamos el MVP como un acta de constitución, una promesa de trabajo futuro hacia el cliente. Lo reforzamos con inteligencia artificial para atacar el dolor raíz. Testeamos y medimos. Aprendemos e iteramos con Lean Inception. Resolvemos problemas del sprint con la técnica adecuada al tipo de problema. Operamos en un tablero Kanban con límite de tareas en curso. Medimos el ritmo con la Ley de Little. Y volvemos a empezar con lo aprendido, cerrando el ciclo PDCA que envuelve todo el proceso.*

> ***Cada concepto tiene su lugar, cada lugar tiene su porqué, y cada porqué tiene su para qué.***"*
