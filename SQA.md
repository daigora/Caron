# Plan de calidad

## Objetivos:

### Objetivos del plan:

Es objeto del presente documento:
- Establecer el conjunto mínimo de requerimientos y recomendaciones técnicas que estandaricen el proceso de desarrollo de software en las fases definidas por las metodologías de aplicación.
-	Definir una serie de instrucciones de trabajo estandarizadas y coherentes en dicho proceso.
- Proporcionar un marco de referencia de terminología y vocabulario común para el desarrollo del software.
- Identificar las principales expectativas a gestionar en las distintas modalidades de contratación del desarrollo. Con recursos humanos y/o materiales propios/o ajenos, etc. Se fijará    especialmente en los entregables (código, ejecutables, documentación, etc.) a exigir y auditar.
-	Estandarizar las herramientas de gestión asociadas a las fases del ciclo de vida del proceso de desarrollo del software.
-	Enfatizar las necesidades de gestión de la calidad de los productos a implantar orientadas a minimizar al máximo los fallos del servicio en el entorno de producción.

## Referencias:

El estándar de calidad aquí definido se adscribe a su vez a los siguientes estándares:
-	Los definidos por la Organización Internacional para la Estandarización (ISO). En especial cabe destacar la norma ISO 9001:2000 que especifica los requisitos para un sistema de gestión de la calidad, así como el estándar ISO/IEC 9126:1991Ingeniería del Software – Calidad de Producto, la cual contiene un modelo de calidad y medición que permite la evaluación de la calidad de un producto software.
-	Los definidos por el Instituto de Ingenieros Eléctricos y Electrónicos (IEEE): o IEEE 730 – 2002: Standard for Software Quality Assurance Plans. Define la información que debe contener un plan de aseguramiento de la calidad software, y su relación con otros procesos implicados (gestión de incidencias, gestión de la configuración). oIEEE 829 – 1998: Standard for Software Test Documentation. Define la documentación generada en cada una de las fases del proyecto de pruebas. oIEEE 830 – 1998: Recommended Practice for Software Requirements Specifications. Proporciona una guía de buenas prácticas para la elaboración de una especificación de requisitos. oIEEE 1012 – 2004: Standard for Software Verification and Validation. Detalla los procesos de verificación y validación (V&V) del software, y su organización. oIEEE 1061 – 1998: Standard for a Software QualityMetrics Methodology. Define el establecimiento, la implementación, el análisis y la validación de métricas de calidad de software.



## Estándares, prácticas y normas

### Objetivos

- Alinear los objetivos de negocio y de tecnología.
- Establecer de manera clara los objetivos, los roles y las responsabilidades.
- Implementar un proceso iterativo controlado por hitos o puntos de control.
- Controlar los riesgos de manera proactiva.
- Responder con eficacia ante los cambios.

### Pistas

Por medio de pistas de actividad superpuestas se facilita la gobernanza del proyecto y la ejecución de procesos. En un nivel, las pistas son agrupaciones superpuestas y coordinadas de ciertas actividades cuya finalidad es generar entregas relevantes de cada pista, la cual tiene una misión distinta y representa un cambio en el ritmo y el foco de un proyecto. En las pistas se usan revisiones y puntos de sincronización denominados puntos de control para poder determinar si se cumplen sus objetivos. Además, se usan puntos de control principales para cerrar cada pista, lo cual permite trasladar las responsabilidades de muchas actividades y anima al equipo a adoptar una nueva perspectiva más apropiada para los objetivos de la siguiente pista.

Las pistas se clasifican en pistas de gobernanza y pistas de ejecucion:

**Pistas de gobernanza:**
La pista de gobernanza se centra en equilibrar el uso eficiente y eficaz de los recursos del proyecto y en la entrega de una solución respetando un conjunto de restricciones del proyecto que pueden cambiar. Además, la pista de gobernanza apoya la mejora continua de los procesos. Proporciona supervisión, procesos, instrucciones y rigor suficientes para usar de manera eficiente y eficaz los recursos del proyecto, entregar una solución y gestionar decisiones de compensación, todo ello equilibrando el respeto de un conjunto de restricciones del proyecto que pueden cambiar. Consta de actividades discretas y persistentes a lo largo de un proyecto.

Los objetivos de la pista de gobernanza son:

- Guiar las actividades de ejecución para entregar una solución con resultados repetibles y confiables
- Optimizar y mejorar continuamente el rendimiento y la capacidad del equipo, la calidad de las soluciones y la mejora de procesos
- Obtener la aprobación de:
  - Usuarios (la solución satisface sus necesidades y se puede usar con suficiencia)
  - Operaciones (la solución está preparada para su implementación)
  - Cliente (el proyecto se ha completado)

**Pistas de gobernanza:**
La ejecución de procesos es la secuencia detallada de pasos que sirven para definir, compilar e implementar una solución. Básicamente, las pistas de ejecución ayudan a un equipo a llegar a un acuerdo de alto nivel sobre lo que se imagina de cara al futuro y crear opciones de enfoque para hacer realidad esa visión (pista de visión); evaluar esas opciones y planear la opción seleccionada (pista de planeación); compilar la solución (pista de compilación); asegurarse de que la solución se entrega según lo esperado (pista de estabilización); y, por último, implementar la solución (pista de implementación).

Los objetivos de cada pista de ejecución son:

- Visión:
  - Desarrollar un entendimiento claro sobre lo que se necesita dentro del contexto de las restricciones del proyecto.
  - Reunir al equipo necesario para concebir soluciones con las opciones y los enfoques más adecuados para esas necesidades y que también satisfagan de manera óptima esas restricciones.
- Planeación:
  - Hacer evolucionar la solución conceptual hasta llegar a diseños y planes tangibles para que se pueda compilar en una pista de compilación.

- Compilar
  - Compilar los aspectos de la solución de acuerdo con las entregas de la pista de planeación, como diseños, planes, programaciones y requisitos.

- Estabilización
  - Mejorar la calidad de la solución para satisfacer los criterios de lanzamiento para la implementación en producción.
  - Validar que la solución satisfaga las necesidades y expectativas de las partes interesadas.
  - Validar la facilidad de uso de la solución desde la perspectiva de los usuarios.
  - Maximizar el éxito y minimizar los riesgos asociados con la implementación y las operaciones de la solución en los entornos de destino de la solución.

- Implementación
  - Integrar una solución correctamente en producción dentro de los entornos designados.
  - Transferir la responsabilidad de la entrega restante de la solución de un equipo de proyecto a equipos de operaciones y soporte técnico tan pronto y de manera tan fluida como sea posible.

### Puntos de control

Los puntos de control, que son un tema central en MSF, se usan para planear y supervisar el progreso del proyecto e informar sobre la finalización de las entregas y actividades. Los puntos de control se usan para proporcionar oportunidades explícitas para que un equipo y los clientes reconfirmen el ámbito del proyecto o para ajustar el ámbito del proyecto a fin de reflejar los cambios en los requisitos de los clientes o el negocio o a fin de dar cabida a los riesgos y problemas que se podrían materializar en el transcurso de un proyecto. Los puntos de control se usan por muchos motivos, como:

- Ayudar a sincronizar los elementos de trabajo.
- Proporcionar visibilidad externa del progreso y la calidad.
- Permitir correcciones a mediados del proyecto.
- Centrar las revisiones en los objetivos y las entregas.
- Proporcionar puntos de aprobación del trabajo antes de avanzar.

MSF distingue entre dos tipos de puntos de control: puntos de control principales y puntos de control provisionales. Los puntos de control principales marcan la finalización de actividades y entregas principales, incluido el final de las actividades planeadas para una pista. El equipo define los puntos de control provisionales para indicar el progreso en una pista y segmentar actividades de gran envergadura en piezas viables.

## Documentación:

### Objetivo:

El control de la documentación del proyecto tiene como objetivo la gestión de documentos relevantes del proyecto a través del manejo de versiones y siguiendo unos documentos mínimos establecidos por la metodología ágil DevOps, con el fin de detectar fallas e inconformidades en el proyecto en una etapa temprana del mismo, así como llevar a cabo una retroalimentación de las necesidades y requerimientos, y dejar una base fundamental para el desarrollo de nuevos proyectos. 

### Documentación mínima aceptable:

El establecimiento de una documentación mínima aceptable se hace en base a la metodología DevOps, donde se determinan unos documentos por fase. En la Tabla a continuación, se estipulan los documentos junto con sus formalidades asociadas como título, versionamiento, revisión y aceptación, y disponibilidad de los documentos.

![](/images/Documentacion_plan_calidad.PNG)
