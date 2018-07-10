# PLAN DE CASO DE PRUEBA 

### Historial de Revisiones

|    Fecha   | Versión |                                 Descripción                                  |      Autor      |
|:----------:|:-------:|:----------------------------------------------------------------------------:|:---------------:|
| 10/07/2018 |   1.0   | Documentación caso de prueba de  Historia de usuario:Actualización  de datos | Camila Guerrero |
|            |         |                                                                              |                 |
|            |         |                                                                              |                 |

### Tabla de Contenidos
1. [Registro de Usuario](#example)
2. [Solicitud de cita](#example2)
3. [Actualización de datos de visitante](#third-example)

## Especificación de Caso de Prueba: Registro de usuario
## Especificación de Caso de Prueba: Solicitud de cita
## Especificación de Caso de Prueba: Actualización de datos de visitante

**1.Descripción:**

Este artefacto cubre el conjunto de pruebas realizadas sobre la historia de Usuario de Actualización de datos del visitante.

![Historia de usuario 1](/images/historiaU1.PNG)

La pruebas realizadas a este caso de uso son:

- Dar clic en "Actualizar información " y que se habilite la edición de los campos de nickname, contraseña, e-mail,telefono,celular y dirección
- Que no se pueda cambiar los datos de nombres, apellidos y cédula.
- Realizar cambios en los campos habilitados , incluir carácteres especiales
- Dar clic en "Guardar cambios" y que se envie un mensaje de confirmación
- Recargar la página y ver la información nueva.
- 
El entorno del cual partiremos para realizar la prueba será el  formulario de datos que presenta el inicio de la aplicación ya despues de que un usuario se identifica como visitante.

*Responsables:*
- Jefe de pruebas
- Ingeniero DevOps

**2. Actualizar información de visitante**

*2.1 Descripción*

El formulario destinado para consignar la información del visitante debe contar con la posibilidad de actualizar datos y que este trabajo lo haga por su propia cuenta el usuario. 

*2.2 Condiciones de ejecución*

Para poderse ejecutar , es necesario que el usuario esté plenamente identificado o logueado en el sistema con su cuenta de visitante. Sólo los visitantes podrán actualizar su información. 

*2.3 Entrada*
- El visitante visualiza el formulario donde está consignada su información y los campos inhabilitados que no le permiten hacer ningún tipo de edición.
- El visitante da clic en el botón "Actualizar información"
- Los campos del formulario tales como nickname, contraseña,e-mail,telefono,celular y dirección se habilitan para edición.
- El usuario realiza los cambios necesarios por entrada de teclado .
- El visitante da clic en el botón de "Guardar Cambios" para guardar la actualización de información que hizo.
*2.4 Resultado esperado*

El formulario visibiliza los cambios realizados y al recargar la página se muestra la actualización sin ningún tipo de problema.

*2.5 Evaluación de la Prueba*
El estado de la prueba es : Pendiente de evaluación

