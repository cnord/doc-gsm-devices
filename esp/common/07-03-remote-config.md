## Configuración remota de dispositivos

**Importante:** la configuración remota sólo está disponible para los dispositivos configurados para el uso de canales de comunicación IP: Ethernet o GPRS.

**Importante:** las funciones descritas en el presente apartado funcionan sólo si el dispositivo está conectado al software del 'Security Center'.

### Selección del objeto para la configuración

Para cambiar la configuración de forma remota en los equipos sirve la pestaña 'Acceso remoto a los objetos' en el panel del técnico:

\imgcapt{img/remote-config.png}{}

En esta pestaña se muestra la lista de objetos disponibles actualmente para la configuración por el técnico. La lista y la duración de los permisos se configura en el software del 'Security Center'.

Para iniciar la configuración hay que pulsar el correspondiente numero del objeto.

### Trabajo con la configuración

La ventana abierta de configuración del equipo es similar al configurador destinado a la configuración del equipo conectado a la computadora, descrito en el apartado 'Configuración':

\imgcapt{img/remote-config-nord.png}{}

Al abrir la ventana de la configuración desde el equipo se lee su configuración actual. A continuación se pueden realizar los cambios que hagan falta y grabarlos en el dispositivo con el correspondiente botón. Después de cargar con éxito la configuración al equipo, se mostrará el mensaje: 'configuración guardada para escribir en el dispositivo'.

**Importante:** la lectura y la modificación de la configuración sólo están disponibles para los dispositivos que actualmente están conectados con la 'Nube'. 
De no ser así, se mostrará un mensaje de error: 'el comunicador, instalado en el objeto, actualmente no está conectado a la 'Nube'. Por favor, intente conectarse al objeto más tarde.'

Preste atención que algunos campos de la configuración, por ejemplo, las direcciones para la conexión a la consola, no se pueden cambiar de forma remota. Esto excluye la posibilidad de interferir de forma remota en la comunicación del equipo con el mando y con la 'Nube'. 

Tampoco están disponibles las acciones que requieren la interacción local con el equipo en el objeto, por ejemplo la unión de los sensores inalámbricos y la adición de llaves TM.

### Características particulares del trabajo

**Trabajo simultaneo**

A pesar de que los permisos para la configuración de un objeto pueden ser concedidos al mismo tiempo a varios técnicos, la configuración directa al mismo tiempo sólo la puede realizar uno de los técnicos. El acceso de los demás técnicos al panel de configuración se bloquea y si se intenta abrir el objeto para la configuración se muestra una advertencia: 'el objeto actualmente ya se está configurando o se está actualizando.'

**Prioridad de configuración local**

Si durante la configuración local por un técnico, otro técnico modifica la configuración del equipo de forma local mediante el configurador 'de sobremesa', ya será imposible aplicar la configuración remota - se mostrará un mensaje de error de carga de la configuración.