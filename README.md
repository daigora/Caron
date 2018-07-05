# CARÓN
Maddyzeth Ariza Riaño 20132020101

Daniel Esteban Ladino Torres 20142020043

Diego Alejandro Correa Ramírez 20141020021

Jhon Janer Castellanos 201310

Diego Alejandro Rodríguez Ayala 20142020068

María Camila Guerrero Giraldo 20142020051

**Fase Inicial**

**Nombre del proyecto:** _Aplicativo para la gestión de visitas en establecimientos carcelarios_

**Problemática que resuelve :**

Las visitas que se dan durante sábados y domingos dentro de los centros de reclusión consisten en un procedimiento extenso, tedioso y sin organización. Para solicitar la cita que permite a miles de mujeres y hombres ver a un familiar que está recluido se vive todo un viacrucis, las personas deben estar desde las 4 o 5 AM esperando la llegada a un primer filtro, posteriormente se les solicita el registro donde otro empleado solicita una foto de medio cuerpo, la cédula de ciudadanía y una fotocopia de la misma. Nada más este proceso ya ha tomado un tiempo considerable.

Luego, vienen procesos de asignación de identificadores que se hace de una manera muy &quot;rústica&quot; , pues se escribe en el brazo de la persona el número, la siguiente estación , es la estación más importante pues en esta se imprime un ticket que contiene información como: nombre del interno, patio en el que se encuentra, nombre del visitante, parentesco con el recluso y número de turno. Finalmente vienen las estaciones de requisa de visitantes y los elementos que se piensan ingresar a la cárcel.

Este procedimiento dura alrededor de 1 hora por persona, si todo sale bien y no hay problemas con la información del visitante y los objetos que porta. No obstante, los inconvenientes en registro y requisas son más comunes de lo que parecen, es por eso que ese tiempo puede variar considerablemente y ralentizar el procedimiento de otros visitantes. De igual forma , los registros de visitas no se consignan de forma correcta y esta información que es importante para el establecimiento penitenciario no se obtiene de manera oportuna. Se observa entonces, que el problema central para visitas en los centros de reclusión es el tiempo que se pierde en filtros demandantes que podrían disminuir con ayuda de un sistema que reúna la información previamente.

**Definición del proyecto:**

El proyecto de software consiste en un aplicativo web orientado a facilitar y agilizar el proceso de agendamiento de citas de visita a los reclusos de los centros penitenciarios de la capital. Dentro de este aplicativo se deben mantener todos los datos relacionados con los reclusos, los empleados del INPEC y los visitantes, esto con el fin de corroborar la información de cada actor a la hora de agendar una visita.

El proyecto cuenta con 5 módulos principales:

1. **Registro de usuarios:** Destinado al registro de información básica de cada actor del sistema (visitante, empleado centro carcelario y recluso), el visitante y el empleado deberán registrarse en el sistema manualmente, mientras que los empleados registran a los reclusos de los cuales son responsables.
2. **Solicitud de visita:** Módulo encargado de solicitar una visita al sistema, el visitante deberá proveer información adicional a la hora de solicitar una visita, tales como el parentesco, documento de identificación, motivo de la visita, ingreso de elementos al centro carcelario con destino al recluso y etc. La solicitud luego se le remite al empleado a cargo del recluso que se va a visitar.
3. **Verificación de requerimientos del visitante:** Una vez remitida la solicitud de la visita, el empleado del centro carcelario se encargará de verificar y validar la información anexada por el visitante, así mismo verificará la condición del recluso, tales como su estado (disponible, aislado, hospitalizado, fuera del centro carcelario), la voluntad de asistir a la visita y en caso de que se vayan a ingresar elementos, verificar que cumplen con las normas del centro carcelario.
4. **Agendamiento de citas:** Finalmente dependiendo del resultado del módulo anterior, se verificará la disponibilidad de citas en el calendario del centro carcelario y se le agendará una cita, la cual se le notificará por medio de una notificación en el aplicativo y un correo electrónico que informará el resultado de la solicitud, si ésta no es aprobada, se le informará los requerimientos que no cumplió y si es aprobada se le informará el día, la hora, el lugar, la sala de visita, y las recomendaciones a seguir al momento de la visita, así mismo se le enviará una etiqueta en formato PDF con código de barras y la información del visitante y el recluso que va a visitar que deberá imprimir y portar el día de la visita.
5. **Métricas e histórico de uso:** Al momento de realizarse las visitas y las solicitudes, la información quedará guardada para uso futuro, tanto para consulta como análisis. Este histórico lo podrán consultar tanto los visitantes como los empleados del centro carcelario siempre que quieran, la información de los reclusos sólo puede ser visualizada por los empleados que los vigilan, mientras que las métricas de uso definidas solo serán accesibles a los administradores como herramienta en la toma de decisiones.

**Objetivos:**

**General:**

Entregar un prototipo de plataforma para la gestión de las visitas carcelarias partiendo de la obligación de orden, facilidad y accesibilidad de los establecimientos carcelarios, teniendo una visión sistémica de las necesidades de los reclusos, sus cercanos y los empleados encargados de diligenciar todo el proceso de planificación, realización y evaluación de las visitas, con el fin de brindar un sistema que cumpla con las exigencias legales hacias sus involucrados.

**Especificos:**

- Apoyar la planificación de la oferta de cupos de visita y sus locaciones.
- Mantener y recuperar la información de los reclusos (con su ubicación en el centro penitenciario), de sus visitantes y de los encargados de controlar la visita.
- Verificar la información entregada por un visitante al momento de su registro.
- Habilitar un canal de fácil acceso para la solicitud y agendamiento de la visita carcelaria.
- Reducir el protocolo y las formalidades al momento de registrar y acceder a la información de una visita penitenciaria.
- Controlar el registro e ingreso de elementos al centro penitenciario, facilitando la trazabilidad entre lo descrito y lo portado.
- Ofrecer acceso a datos históricos de las visitas realizadas para apoyar futuras tomas de decisiones.

**Alcances y Limitaciones**

**Alcances**

La plataforma tendrá un registro de tres tipos de usuarios: los administrativos, los reclusos y los visitantes. Los administrativos tienen la función de gestionar la información de los reclusos, tal como datos personales, fecha de ingreso, fecha de salida, celda, sanciones, delitos y un identificador; así mismo, los administrativos se encargan de gestionar la información asociada a los visitantes, ya que cada visitante requiere una validación por parte de los administrativos para acceder como visitante, por lo tanto un administrativo es quien permite o niega una solicitud de visita. Además, el rol de los administrativos es cumplido por los diferentes empleados de la organización, que tengan los permisos para llevar a cabo estas funciones; por lo tanto, los empleados encargados también son registrados dentro del sistema con su información personal, identificadores y función. Los reclusos son únicamente registrados por los administrativos.

El rol de visitante lo cumplen aquellos familiares o cercanos de algún recluso, que quiera ir de visita. En este caso, el visitante debe cumplir dos pasos: el primero, hacer un registro en la plataforma con su información personal, además de adjuntar una copia de la cédula de ciudadanía; el segundo, solicitar un agendamiento de cita donde se debe especificar el recluso a quien va a visitar, la fecha, la hora, el parentesco, el motivo de visita, los ítems que va a aportar, en caso que los haya, además de sustentar la información al adjuntar los siguientes documentos: una constancia de parentesco, un compromiso firmado no mayor a tres meses de antigüedad, una foto a color de medio cuerpo reciente, y para los visitantes menores de edad, un extrajuicio notarial de aprobación de la visita por sus representantes. La asignación de la visita no será aprobada en caso de que el recluso tenga una sanción u otros factores que limitan al recluso o al mismo visitante.

**Limitaciones**

- Según las reglas establecidas por el INPEC, para aprobar una solicitud de visita el funcionario encargado debe hacer la revisión de los documentos, además de cumplir con una visita domiciliaria; sin embargo, para este proyecto solo se tendrá en cuenta una suposición de los documentos requeridos, sin tener en cuenta la visita domiciliaria.
- El INPEC plantea que las instalaciones de las penitenciarías contienen más o menos 6000 reclusos; sin embargo, para las pruebas del proyecto no se tomará esa cantidad de datos sino una cantidad representativa.
- Las visitas solo se pueden llevar a cabo los sábados y domingos.
- El proyecto será orientado únicamente a las instituciones penitenciarias de Bogotá.
- El tipo de ítems que se pueden ingresar en la visita, será el acordado por INPEC en la resolución 6305de 20091.

**Criterios de Exito**

1. La información disponible debe ser encontrada fácilmente y estar disponible para los stakeholder del proyecto según sus necesidades.
2. La plataforma debe adaptarse a la legislación vigente de la región donde sea vaya a desplegada.
3. Se debe poder delimitar los derechos de acceso al control y cambio de la información de la plataforma.
4. La plataforma debe ser amigable, intuitiva y de navegación ágil.
5. Se debe cumplir con los tres criterios mínimos de seguridad.
 a. Autenticidad
 b. Confidencialidad
 c. Integridad
6. La plataforma debe proveer la posibilidad de generar un informe histórico para los diferentes criterios.
7. La información debe ser actualizable en tiempo real, con el fin de mantener las reglas del negocio.
8. Cada vez que quiera registrar una visita debe autenticarse los datos suministrados del visitante ante un ente externo.
9. La infraestructura tecnológica debe contar un sistema de duplicación de respaldo ante cualquier fallo.
10. La infraestructura tecnológica debe ser externa al ente penitenciario y debe garantizar su continuo funcionamiento.
11. La administración de la plataforma debe contar con la posibilidad de  acceso remoto.
12. La plataforma debe poder migrar la información desde documentos de archivo planos.

**Listado de tareas y construcción**

* (89) Fase inicial de contratación
    * (90) Reunion informativa
    * (91) Descripción de requisitos funcionales
    * (92) Visitas a centros penitenciarios
    * (93) Firma de contrato
* (12) Planeación:
    * (14) Definición de tareas
    * (17) Definición de objetivos
    * (19) Definición de alcance
    * (20) Definición de criterios de éxito
    * (21) Construcción EDT
    * (22) Estimación de recursos
    * (100) Definir hitos del proyecto
    * (101) Refinar hitos del proyecto
* (23) Revisión de estado actual:
    * (24) Estudio de la legislación penitenciaria
    * (25) Análisis de requerimientos por roles
    * (26) Detectar falencias en los procesos del sistema
    * (27) Delimitar la información relevante de los roles
* (28) Construcción de software:
    * (105) Instalar herramientas de terceros
    * (106) Documentación de componentes de software
    * (29) Construcción de componentes de software:
        * (30) Registro de usuario:
            * (31) CRUD Visitante
            * (32) CRUD Empleado
            * (33) CRUD Recluso
            * (34) Autenticar acceso
        * (36) Solicitud de visita:
            * (37) CRUD Solicitud
        * (38) Verificación de requerimientos de visitante:
            * (39) Notificar recepción de solicitud
            * (40) CRUD Validación
        * (41) Agendamiento de citas:
            * (68) Modificar estado de la solicitud
            * (42) Notificar respuesta de solicitud
            * (43) Desplegar boletin de Recomendaciones
        * (44) Documentos:
            * (45) Cargar archivos
            * (46) Generar ticket de visita en PDF
            * (47) Generar reposter de histórico de citas
            * (48) Generar métricas del aplicativo
        * (71) Administración
            * (72) Gestionar permisos
            * (73) Gestionar configuración de la plataforma
            * (74) Cambiar el estado general de la plataforma
            * (75) Modificar usuarios según su rol
        * (49) Migración de datos al sistema de información:
            * (50) Migración de datos de empleados
            * (51) Migración de datos de reclusos
        * (52) Integración:
            * (53) Parametrización del módulo de documentos
            * (54) Parametrización del módulo de registro
            * (55) Parametrización del módulo de solicitud de visita
            * (56) Parametrización del módulo verificación de requerimientos
            * (57) Parametrización del módulo de agendamiento de citas
            * (69) Parametrización del módulo de administración
            * (70) Parametrización de vistas
        * (78) Vista
            * (79) Crear vista de visitante
            * (80) Crear vista de administrador
            * (81) Crear vista de empleado
            * (82) Crear vista general
            * (83) Crear formularios de registros
* (58) Pruebas:
    * (103) Diseño de plan de pruebas
    * (104) Construcción de scripts de pruebas
    * (50) Pruebas de componentes:
        * (60) Prueba de registro de usuario
        * (61) Prueba de solicitud de visita
        * (62) Prueba de verificación de requerimientos de visitante
        * (63) Prueba del módulo de documentos
        * (99) Prueba del módulo de administración
* (64) Puesta en marcha:
    * (107) Construcción manual de usuario y de instalación
    * (65) Despliegue
    * (66) Aprobación del cliente
* (94) Cierre de proyecto
    * (108) Entrega de documentación completa del producto
    * (95) Entrega de productos
    * (98) Resolución del contrato


**EDT**

![](/images/EDT.PNG)

**Propuesta estructura orgánica:**

![](/images/estructura_organica.png)

**Estimaciones** [Disponible aquí](https://docs.google.com/spreadsheets/d/1KGs9Y5dLv0NDuRlbtz7cf2v1dTNEGeREAM1t5Hsk28U/edit?usp=sharing)

![](/images/estimacionCostos.PNG)

![](/images/estimacionTiempos.PNG)

**Cronograma**
![](/images/cro1.png)
![](/images/cro2.png)
![](/images/cro3.png)
![](/images/cro4.png)
![](/images/cro5.png)
![](/images/cro6.png)
![](/images/cro7.png)
![](/images/cro8.png)
![](/images/cro9.png)
![](/images/cro10.png)



**Diagrama de flujo del proyecto**

![](/images/flujograma.png)

**Estructura de desglose de recursos**

![](/images/rbs.png)

**Matriz de Identificación de Riesgos** [Disponible aquí](https://docs.google.com/spreadsheets/d/1HNhv0lnjbljHc_Gt_yqM9vKkxg_p-VUNbnf8mBl2vp4/edit?usp=sharing)

![](/images/matrzR.png)
![](/images/matrzR2.png)

**Procesos de desarrollo del proyecto**

![](/images/BPMN-CARON-DEVOPS-1.0.png)
