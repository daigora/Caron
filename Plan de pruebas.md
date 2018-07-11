# Plan de Pruebas

### Historial de Versiones:

<table summary="Historial de Versiones">
  <thead>
    <tr>
      <th scope="col">Fecha</th>
      <th scope="col">Versión</th>
      <th scope="col">Autor</th>
      <th scope="col">Organización</th>
      <th scope="col">Descripción</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>12/07/2018</td>
      <td>1</td>
      <td>Jhon Janer Castellanos</td>
      <td>Caronsoft</td>
      <td>Entrega de módulo de autenticación y actualización de datos</td>
    </tr>
  </tbody>
</table>

## Información del Proyecto:

<table summary="Información del Proyecto">
  <thead>
    <tr>
      <th scope="col">Item</th>
      <th scope="col">Detalle</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Empresa / Organización</td>
      <td>Caronsoft</td>
    </tr>
    <tr>
      <td>Proyecto</td>
      <td>Caron</td>
    </tr>
    <tr>
      <td>Fecha de preparación</td>
      <td>09/07/2018</td>
    </tr>
    <tr>
      <td>Cliente</td>
      <td>INPEC</td>
    </tr>
    <tr>
      <td>Patrocinador principal</td>
      <td>Ministerio de Justicia</td>
    </tr>
    <tr>
      <td>Gerente / Líder de Proyecto</td>
      <td>Jhon Janer Castellanos</td>
    </tr>
    <tr>
      <td>Gerente / Líder de Pruebas de Software</td>
      <td>Diego Alejandro Rodríguez</td>
    </tr>
  </tbody>
</table>

## Aprobaciones:
<table summary="Aprobaciones">
  <thead>
    <tr>
      <th scope="col">Nombre y Apellidos</th>
      <th scope="col">Cargo</th>
      <th scope="col">Departamento u Organización</th>
      <th scope="col">Fecha</th>
      <th scope="col">Firma</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Daniel Ladino</td>
      <td>Gerente</td>
      <td>Caronsoft</td>
      <td>10/07/2018</td>
      <td>Daniel Ladino</td>
    </tr>
  </tbody>
</table>

## Resumen Ejecutivo:

El presente plan de busca reunir las especificaciones necesarias para la realización de pruebas en el producto de software Caron, a continuación, se presenciarán las funcionalidades con las que deberá contar el producto de software con el fin de cumplir unos criterios de aceptación o rechazo detallados al final del plan. Además de ello se detallan los recursos, hitos, alcance y planificación del plan de pruebas necesarios para la ejecución del mismo.

## Alcance de las Pruebas:

### Elementos de pruebas:

Los elementos de pruebas considerados, son aquellos componentes construidos en el sistema, que se presentan a continuación.

-	Registro de usuario: hace referencia a la gestión de registro, modificación, eliminación, autenticación y listado de los diferentes tipos de usuarios: visitante, empleado y recluso, además del administrador, quien se encarga de la gestión general.
-	Solicitud de visita: este módulo se encarga de registrar las diferentes solicitudes de visita, además de su modificación, para actualización de estado (si es aceptada o no) o eliminación. El rol de empleado o administrador, tiene acceso al listado de las visitas para hacer los cambios requeridos y evaluar su aceptación.
-	Verificación de requerimientos de visitante: este módulo tiene como función hacer contacto con la entidad de Registraduría para verificar la identidad de la persona como visitante; se encarga de confirmar o no la veracidad de la información suministrada por la persona. 
-	Agendamiento de citas: este módulo tiene como fin llevar a cabo un registro de las solicitudes de visita aceptadas, de acuerdo a la disponibilidad existente y a las fechas de visitas establecidas, relacionando al visitante con el recluso al que desea visitar, para finalmente generar un ticket de visita.
-	Documentos: este módulo se encarga de la administración de la carga de documentos por parte de los visitantes, teniendo en cuenta su tipo, tamaño, el almacenamiento y la forma para hacerlo.
-	Administración: este módulo tiene como fin establecer las diferentes funciones de las cuáles está a cargo el rol administrador, tales como la asignación de permisos, configuración de la plataforma, administración de usuarios, entre otros.
-	Vistas: este módulo hace referencia a la creación de las diferentes interfaces gráficas de usuario por rol, así como los formularios de registro.

### Nuevas Funcionalidades a Probar:

####Rol visitante

-	**Registro de usuario:** registro para un nuevo usuario visitante quien no ha sido registrado previamente. Dentro del registro se incluye la carga de una copia de la cédula de ciudadanía para confirmar la identidad de la persona. El registro debe ser aprobado por la entidad autorizada del INPEC.
-	**Autenticación como usuario:** una vez registrado un nuevo visitante, este puede ingresar a la plataforma ingresando el correo electrónico registrado, y la contraseña. De ser correcto y previamente aprobado, el usuario podrá ingresar. 
-	**Actualización de datos:** un usuario autenticado, tiene la opción de actualizar la información que tiene registrada.
-	**Solicitud de citas:** un visitante autenticado, puede solicitar una visita a un recluso, donde debe incluir unos documentos que confirmen su identidad y la relación con el recluso. La solicitud debe ser aprobada por algún funcionario del INPEC.
-	**Visualización de histórico de citas:** un visitante autenticado puede revisar el histórico de todas las visitas que ha solicitado.
-	**Consultar estado de la cita:** un visitante autenticado puede consultar el estado actual de la visita que ha solicitado.
-	**Cargar documentación:** un visitante debe cargar documentos en dos casos: cuando se registra, para confirmar su identidad a través de una fotocopia de la cédula, y cuando solicita una cita, donde incluye un compromiso firmado, una constancia de parentesco, una foto de medio cuerpo a color y, opcionalmente, un extrajuicio notarial (para menores de edad).

####Rol empleado:

-	**Autenticación como empleado:** un usuario empleado registrado, puede ingresar a la plataforma usando el correo electrónico previamente registrado, y la contraseña. De ser correcto, el usuario podrá ingresar.
-	**Visualización histórico de citas general:** un empleado autenticado, puede revisar el histórico de todas las visitas que se han dado para todos los usuarios.
-	**Agendamiento de citas:** un usuario empleado autenticado, puede ver el registro de todas las solicitudes de visita y cambiar su estado, para aceptar o denegar una cita. 
-	**Actualización de información de reclusos:** un empleado autenticado, tiene la opción de administrar la información de los reclusos, ya sea para agregar uno nuevo, eliminar, modificar información o cambiar su estado.

####Rol administrador:

-	**Registro de información de empleado:** un usuario administrador debe registrar a todos los empleados que van a tener acceso a la plataforma.

### Pruebas de Regresión:

-	**Módulo de carga de documentos externo:** módulo de otra aplicación, mediante el cual el usuario puede cargas los documentos debidos.
-	**Autenticación por medio de redes sociales:** opción del usuario de autenticarse en la plataforma, usando redes sociales; esta opción no está incluida.
-	**Módulo de peticiones, quejas y reclamos:** opción del usuario de escribir comentarios ya sea para una petición, una queja o algún reclamo; este módulo no está incluido.

### Funcionalidad a No Probar:

-	**Aprobación de documentos por parte de entes externos:** cuando un visitante se registra, debe incluir una copia de su cédula para que la Registraduría confirme su identidad; sin embargo, esta funcionalidad no va a ser probada, ya que no se cuenta con una alianza con la entidad. 
-	**Agendamiento de citas:** una cita es aceptada por un funcionario del INPEC, si el visitante cumple con la documentación requerida; esta funcionalidad no va a ser probada ya que para considerar los documentos como auténticos, hay que tener ciertos conocimientos y no se cuenta con personal especializado, ni con opciones de capacitación.

### Enfoque de Pruebas (Estrategia):

En las Tablas a continuación, se describen los diferentes enfoques de pruebas para el proyecto.

#### Pruebas de caja negra
<table summary="Caja negra">
  <tbody>
    <tr>
      <td>Objetivo</td>
      <td>Comportamiento de entrada/salida del sistema</td>
    </tr>
    <tr>
      <td>Descripción</td>
      <td>Se prueba que los datos que el usuario ingrese sean correctamente leídos, y así mismo, que lo que se obtenga de esos datos también sea correcto y significativo para el usuario.</td>
    </tr>
    <tr>
      <td>Técnicas</td>
      <td>Se probará cada uno de los componentes donde el usuario debe ingresar cualquier tipo de información.</td>
    </tr>
    <tr>
      <td>Entorno de prueba</td>
      <td>Se realizará en el establecimiento penitenciario pertinente y desde un hogar, para luego comparar con los resultados obtenidos en la máquina principal para desarrollo del equipo de trabajo.</td>
    </tr>
  </tbody>
</table>

#### Prebas de despliegue e instalación
<table summary="Despliegue e instalación">
  <tbody>
    <tr>
      <td>Objetivo</td>
      <td>Comprobar el comportamiento del sistema frente a los requisitos de hardware./td>
    </tr>
    <tr>
      <td>Descripción</td>
      <td>Se prueba que la aplicación quede correctamente instalada y se ejecute efectivamente en cualquier entorno.</td>
    </tr>
    <tr>
      <td>Técnicas</td>
      <td>Se instalará y ejecutará la información en los entornos establecidos</td>
    </tr>
    <tr>
      <td>Entorno de prueba</td>
      <td>Se realizará en el establecimiento penitenciario pertinente y desde un hogar, para luego comparar con los resultados obtenidos en la máquina principal para desarrollo del equipo de trabajo.</td>
    </tr>
  </tbody>
</table>


#### Prebas unitarias
<table summary="Unitarias">
  <tbody>
    <tr>
      <td>Objetivo</td>
      <td>Verificar el comportamiento aislado de cada una de las piezas del software./td>
    </tr>
    <tr>
      <td>Descripción</td>
      <td>Se prueba el correcto funcionamiento de cada uno de los componentes del sistema.</td>
    </tr>
    <tr>
      <td>Técnicas</td>
      <td>Se ejecutará un script de prueba por cada uno de los módulos que se desarrollaron en el software.</td>
    </tr>
    <tr>
      <td>Entorno de prueba</td>
      <td>Se realizará en el establecimiento penitenciario pertinente y desde un hogar, para luego comparar con los resultados obtenidos en la máquina principal para desarrollo del equipo de trabajo.</td>
    </tr>
  </tbody>
</table>

#### Prebas de integración
<table summary="Integración">
  <tbody>
    <tr>
      <td>Objetivo</td>
      <td>Verificar la interacción entre componentes del sistema de software./td>
    </tr>
    <tr>
      <td>Descripción</td>
      <td>Se prueba la comunicación y capacidad de interacción entre los módulos del sistema.</td>
    </tr>
    <tr>
      <td>Técnicas</td>
      <td>Se ejecutará un script de prueba por cada una de las relaciones existentes entre diferentes componentes del sistema.</td>
    </tr>
    <tr>
      <td>Entorno de prueba</td>
      <td>Se realizará en el establecimiento penitenciario pertinente y desde un hogar, para luego comparar con los resultados obtenidos en la máquina principal para desarrollo del equipo de trabajo.</td>
    </tr>
  </tbody>
</table>

#### Prebas de sistema 
<table summary="Sistema">
  <tbody>
    <tr>
      <td>Objetivo</td>
      <td>Verificar el comportamiento del sistema en su conjunto./td>
    </tr>
    <tr>
      <td>Descripción</td>
      <td>Se prueba el sistema en general, comprobando los requerimientos no funcionales del sistema, como lo son seguridad, velocidad, fiabilidad, etc.</td>
    </tr>
    <tr>
      <td>Técnicas</td>
      <td>Se ejecutará un script para probar: comunicación entre componentes o sistemas, utilidades, entorno operativo, interfaces externas, etc.</td>
    </tr>
    <tr>
      <td>Entorno de prueba</td>
      <td>Se realizará en el establecimiento penitenciario pertinente y desde un hogar, para luego comparar con los resultados obtenidos en la máquina principal para desarrollo del equipo de trabajo.</td>
    </tr>
  </tbody>
</table>

## Entregables:

1. Documento de plan de pruebas.
2. Historias de usuarios.
3. Casos de pruebas.
4. Especificación de diseño de casos.
5. Logs de errores. 
6. Reportes de incidencias. 
7. Evidencias de pruebas. 
8. Reportes emitidos por las herramientas de pruebas. 


## Criterios de Aceptación o Rechazo:

### Criterios de Aceptación o Rechazo:

Serán considerados los siguientes criterios para la aceptación o rechazo de los resultados del plan de pruebas:

-	El porcentaje de los casos exitosos en las pruebas debe superar el 99%
-	El porcentaje de defectos corregidos deberá estar sobre el 90%
-	El porcentaje total de errores no puede superar el 10% de la funcionalidad total del producto
-	Todas las funcionalidades del agendamiento de citas deberán funcionar sin ningún error o inconsistencia
-	Las funcionalidades de cargado de archivo deberán operar bajo completa normalidad
-	El producto deberá tener una disponibilidad de al menos 95% en el servidor donde se hospede.
-	El producto puede contar con máximo un 10% de errores menores que no impacten críticamente al producto y que su causa sea desconocida.

### Criterios de Suspensión:

Serán criterios de suspensión del plan de pruebas los siguientes:

-	Enfermedad grave que afecte al equipo de pruebas
-	Daños en el hardware donde se ejecutan las pruebas
-	Daños en el sistema operativo y software necesario para las pruebas
-	Ocurrencia de desastres naturales
-	Calamidades domésticas o de fuerza mayor del equipo de pruebas
-	Ocurrencia de un error de gravedad contemplado en la fase de diseño del producto

### Criterios de Reanudación:
Se reanudará el plan de pruebas bajo los siguientes criterios:

-	Cuando la persona enferma vuelva a estar en condiciones óptimas para realizar la prueba
-	Cuando el hardware donde se ejecutan las pruebas haya sido reparado
-	Cuando los daños en el sistema operativo o el software hayan sido corregidos, o en caso contrario un formateo y reinstalación del software se haya efectuado.
-	Cuando el entorno de trabajo sea seguro para operar las pruebas
-	Cuando el miembro del equipo haya resuelto sus calamidades domésticas y esté en condiciones de realizar las pruebas
-	Cuando el error de gravedad en el diseño se haya corregido y se hayan hecho los ajustes pertinentes.

## Recursos:

### Requerimientos de Entornos – Hardware :

-	Computadora de escritorio con Intel Core i7 7770k, 8GB ram DDR4, SSD 1TB.
-	Servidor web Intel Xeon E5 CPUs, 32-64GB RAM, SSD and SAS/SATA3
-	Conectividad de FFTH de 500 Mbps

### Requerimientos de Entornos – Software  :

-	Sistema operativo Windows 10
-	Navegador Google Chrome, Firefox, Microsoft Edge, Opera, Safari
-	PGAdmin 3
-	PostgreSQL DB
-	Angular JS
-	Node JS
-	Bootstrap
-	Sistema operativo Devian

### Herramientas de Pruebas Requeridas:

Durante las pruebas se utilizarán las siguientes herramientas de pruebas:

-	DevOps: metodología de desarrollo ágil orientada a la automatización de la integración y pruebas.
-	Selenium: Herramienta para la automatización de pruebas de aplicativos web
-	Jenkins: Herramienta para la automatización de la integración y despliegue de la aplicación.
-	Docker: Herramienta para el montaje del entorno de pruebas.

### Personal:

-	Un (1) Ingeniero DevOps:  Coordina las actividades dentro de la metodología ágil
-	Un (1) Administrador del plan de pruebas: Coordina que el plan de pruebas se lleve a cabo correctamente y hacer la planeación del mismo
-	Dos (2) Aseguradores de calidad: Verifican que el software esté realizado conforme a los estándares de calidad
-	Dos (2) Especialistas en automatización de pruebas: Encargados de generar los scripts de automatización para las pruebas y ejecutar las mismas.
-	Cinco (5) Testers: Encargados de probar el sistema como si fueran usuarios de la aplicación.

### Entrenamiento:

Para poder llevar a cabo el plan de pruebas es necesario realizar capacitaciones en:
-	Metodología DevOps
-	Uso de la plataforma Caron
-	Uso de Selenium
-	Uso de Jenkins
-	Uso de Docker

## Planificación y Organización:

### Procedimientos para las Pruebas:

El plan de ejecución de pruebas, se lleva a cabo con el siguiente proceso: 

1. **Planificación de pruebas:** para la planificación de pruebas es necesario tener la información del proyecto, y la información sobre el software, que se refiere al desarrollo del mismo. Este paso permite tener un plan sobre cuáles son los componentes del software que serán probados, y el tipo de pruebas que se esperan aplicar. 

2. **Diseño de pruebas:** el diseño de pruebas está basado en el plan de pruebas obtenido en la fase anterior, donde, como se mencionó anteriormente, se tienen en cuenta el tipo de pruebas para aplicar a los diferentes componentes. 

3. **Ejecución de pruebas:** con el diseño de las pruebas, se obtiene la configuración de las pruebas para su ejecución, donde también se debe considerar la configuración del software también. 

4. **Evaluación:** la evaluación de las pruebas se hace de acuerdo a los resultados obtenidos en la fase de ejecución de pruebas, donde se hace un contraste con los resultados esperados. Esta evaluación es la base la realizar correcciones y establecer estadísticas de errores. 

5. **Depuración:** la depuración se lleva a cabo para la detección de errores en las pruebas, y su corrección. Si existen correcciones, se deben tener en cuenta para volver a ejecutar desde el paso 4. 

6. **Análisis de errores:** con las estadísticas de errores obtenidas en el paso 4, se lleva a cabo un análisis de errores que permiten hacer una retroalimentación en el software. Como resultado se tienen unas actividades preventivas, y la predicción de fiabilidad para el desarrollo del software. El proceso puede volver a empezar desde el paso 1, si existe retroalimentación.

### Matriz de Responsabilidades:

A continuación se plantea la matriz RACI, para establecer las actividades que se llevan a cabo, y las responsabilidades según los roles de la metodología DevOps. El código de colores se usa para especificar si es responsable, aprobador, consultado o informado. 

![](/images/matrizRACI.PNG)
![](/images/respMatriz.PNG)

### Cronograma:

![](/images/cro8.png)

### Premisas:

-	Limitaciones de tiempo: se cuenta con un tiempo destinado para el proyecto es de aproximadamente un año y medio. 
-	Recurso humano: se cuenta con seis personas en el proyecto. 
-	Herramienta de pruebas: las herramientas de pruebas elegidas son Selenium y Karma. 

### Dependencias y Riesgos: 

-	Disponibilidad de recursos: se puede presentar ausencia de algún miembro del equipo por enfermedad, accidente, emergencias familiares, y demás situaciones. Como es un riesgo que no puede evitarse, se dispone que el resto del equipo asumirá las tareas del miembro faltante en la división que más convenga de acuerdo a las actividades ya establecidas.
-	Restricciones de tiempo: el tiempo para desarrollar el proyecto puede no ser suficiente, o parecer no suficiente; es por ello que se establece un cronograma donde se considerar holguras, y entregables por hitos. En caso de seguir presentando falta de tiempo, se debe comunicar al cliente las fallas y las soluciones propuestas. 
-	Premisas que no resultan ciertas: la premisa del tiempo y del recurso humano tienen relación con los dos riestos expuestos anteriormente; además, si se presentara que no existe disponibilidad de las herramientas establecidad, o se debe hacer un cambio, los miembros del equipo ya han sido preparados para el uso de otras herramientas que se estudiaron previamente y se eligieron como respaldo.

## Referencias:

Para una mayor referencia o más detalle, puede consultar:
-	Documento plan de proyecto Caron
-	SQA Caron
-	Especificación de requerimientos
-	Historias de usuario
-	DevOps.com

## Glosario

**Bug:** Desperfecto en un componente o sistema que puede causar que el componente o sistema falle en desempeñar las funciones requeridas.

**Disponibilidad:** Grado en el cual un componente o sistema es operacional y accesible cuando su uso es requerido.

**Efectividad:** Capacidad de producir un resultado esperado

**Eficiencia:** Capacidad de un producto de software de proveer el rendimiento apropiado, relativo a la cantidad de recursos usados bajo las condiciones establecidas.

**Entorno de prueba:** Un entorno que contiene hardware, instrumentación, simuladores, herramientas de software y otros elementos de soporte necesarios para conducir una prueba.

**Error:** Acción humana que produce un resultado incorrecto.

**Estabilidad:** La capacidad del producto de software para evitar efectos no deseados de modificaciones de software

**Estándar:** Es un documento establecido por consenso, aprobado por un cuerpo reconocido, y que ofrece reglas, guías o características para que se use repetidamente.

**Fallo:** Manifestación física o funcional de un defecto.

**Funcionalidad:** Capacidad del producto de software para proveer las funciones para la cual fue diseñado.

**Prueba de regresión:** Funcionalidades no directamente involucradas en el desarrollo, pero cuyos componentes están siendo afectados y por ende deben probarse para asegurar que continúan funcionando adecuadamente.

**Pruebas de caja blanca:** Pruebas basadas en un análisis de la estructura interna del componente o sistema.

**Prueba de caja negra:** Pruebas funcionales o no funcionales, sin referirse a la estructura interna del componente o sistema.

**SQA:** Documento que contiene todas las especificaciones del plan de calidad de un proyecto de software.

**Tester:** Persona encargada de planificar y llevar a cabo pruebas de software.

**Versión:** Proceso de asignación de un nombre, código o número único, a un software para indicar su nivel de desarrollo.
