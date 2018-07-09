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

El presente plan de busca reunir las especificaciones necesarias para la realización de pruebas en el producto de software Caron, a continuación, se presenciarán las funcionalidades con las que deberá contar el producto de software con el fin de cumplir unos criterios de aceptación o rechazo detallados al final del plan. Además de ello se detallan los recursos, hitos, alcance y planificación del plan de pruebas necesarios para la ejecución del mismo

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

## Referencias:

Para una mayor referencia o más detalle, puede consultar:
-	Documento plan de proyecto Caron
-	SQA Caron
-	Especificación de requerimientos
-	Historias de usuario
-	DevOps.com

## Glosario

**Bug:** Desperfecto en un componente o sistema que puede causar que el componente o sistema falle en desempeñar las funciones requeridas
**Disponibilidad:** Grado en el cual un componente o sistema es operacional y accesible cuando su uso es requerido.
**Efectividad:** Capacidad de producir un resultado esperado
**Eficiencia:** Capacidad de un producto de software de proveer el rendimiento apropiado, relativo a la cantidad de recursos usados bajo las condiciones establecidas.
**Entorno de prueba:** Un entorno que contiene hardware, instrumentación, simuladores, herramientas de software y otros elementos de soporte necesarios para conducir una prueba.
**Error:** Acción humana que produce un resultado incorrecto.
**Estabilidad:** La capacidad del producto de software para evitar efectos no deseados de modificaciones de software
**Estándar:** Es un documento establecido por consenso, aprobado por un cuerpo reconocido, y que ofrece reglas, guías o características para que se use repetidamente.
**Fallo:** Manifestación física o funcional de un defecto.
**Funcionalidad:** Capacidad del producto de software para proveer las funciones para la cual fue diseñado-
**Prueba de regresión:** Funcionalidades no directamente involucradas en el desarrollo, pero cuyos componentes están siendo afectados y por ende deben probarse para asegurar que continúan funcionando adecuadamente.
**Pruebas de caja blanca:** Pruebas basadas en un análisis de la estructura interna del componente o sistema.
**Prueba de caja negra:** Pruebas funcionales o no funcionales, sin referirse a la estructura interna del componente o sistema.
**SQA:** Documento que contiene todas las especificaciones del plan de calidad de un proyecto de software.
**Tester:** Persona encargada de planificar y llevar a cabo pruebas de software.
**Versión:** Proceso de asignación de un nombre, código o número único, a un software para indicar su nivel de desarrollo.
