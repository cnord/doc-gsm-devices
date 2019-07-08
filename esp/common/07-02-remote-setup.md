## Configuración del acceso remoto

El acceso remoto al equipo sólo es posible si la consola a la cual está conectado el equipo, dispone de un software compatible instalado, por ejemplo 'Security Center'. Para usar la función de acceso remoto al dispositivo, hay que hacer lo siguiente:

1. Crear un técnico en el software de la consola

2. Concederle al técnico los derechos de acceso remoto a determinados objetos

### Creación del técnico

Para crear una cuenta de usuario para el técnico en el software 'Security Center' hay que ejecutar el módulo 'Administrador del personal' y pulsar el botón 'Crear' en la pestaña 'Técnicos':

\imgcapt{img/sc-eng-list-1.png}{}

En la ventana que se abra hay que rellenar todos los campos con la información sobre el técnico:

\imgcapt{img/sc-eng-list-2.png}{}

Hay que prestar especial atención a la hora de rellenar el campo de 'Correo electrónico'. Precisamente a esta dirección de correo electrónico, indicada en este campo, será enviada una carta con el enlace, por el cual el técnico deberá pasar para finalizar el registro de la cuenta de usuario en la 'Nube'. El correo electrónico del técnico sirve para su identificación en la 'Nube'. Después de que el técnico sea creado, el valor de este campo no se puede cambiar. 

Si el técnico para el cual se crea la cuenta de usuario debe tener la posibilidad de actualizar de forma remota el software en los equipos instalados en los objetos, hay que marcar la casilla 'Permitirle al técnico la actualización remota del software en los equipos de los objetos'. *Esta configuración está disponible en el 'Security Center' de la versión 5 y superior.*

**Importante:** el permiso del técnico para la actualización del software se extiende sobre todos los objetos de la empresa de seguridad con la función de actualización remota del 'firmware'.

Para que los cambios entren en vigor, en la pestaña 'Técnicos' hay que pulsar el botón 'Guardar'. Después de ello la información sobre los técnicos y su derecho de actualizar los equipos se sincroniza con la 'Nube'.

### Expedición de permisos al técnico

Para concederle al técnico en el Software 'Security Center' el permiso de acceso remoto a los equipos instalados en el objeto, hay que hacer lo siguiente:

1. Iniciar el módulo 'Administrador de objetos'

2. Seleccionar el objeto al cual hay que permitir el acceso remoto

3. Ir a la pestaña 'Servicios'

4. Pulsar el botón 'Añadir permiso'
   
\imgcapt{img/sc-eng-perm-1.png}{}

5. En la ventana emergente hay que seleccionar al técnico al que hay que conceder el acceso al objeto
   
\imgcapt{img/sc-eng-perm-2.png}{}

6. Especificar el intervalo temporal durante el cual durará el permiso.
   
7. Pulsar el botón 'Conceder permiso'.