\pagebreak

## Panel de estado

Al realizar los trabajos de montaje del objeto el técnico normalmente debe verificar que la ubicación y la conexión de los sensores fue realizada correctamente y no hay fallos en su funcionamiento.

En el configurador, en la pestaña 'Panel de estado' se muestra la información actual sobre el estado de las zonas por cable, dispositivos inalámbricos conectados al equipo, así como el estado de los canales de comunicación.

\imgcapt{img/06-16-config-dashboard-01.png}{ВкладкаPestaña 'Panel de estado', canales de comunicación}

### Canales de comunicación

Durante el montaje y el servicio del equipo es importante conocer la información actual sobre el estado de los canales de comunicación. Mediante la pestaña 'Panel de estado' se puede ver con qué tarjeta SIM y con qué canal de comunicación funciona el equipo actualmente.

Para cada canal de comunicación presente en la configuración del equipo, se muestra su estado actual: activo / no activo, si hay conexión con el 'Security Center' y la 'Nube', que errores aparecieron durante la inicialización del canal, conexión a la consola o transmisión de eventos.

Mediante el botón 'On' se puede realizar el cambio forzado a aquel canal de comunicación, cuyo funcionamiento hay que comprobar. Para que el técnico pueda asegurarse que el canal realmente funciona, al pulsar el botón 'On' se crea un evento de prueba con el código E602 que será transmitido a través del canal, si el canal se inicializa con éxito.

A la izquierda del botón 'On' se muestra la cantidad de eventos que fueron transmitidos a la consola desde aquel momento, cuando el canal estaba activo la última vez.

### Zonas por cable

Para cada zona por cable, activada en la pestaña Zonas, se muestra su estado físico. Por ejemplo, si la zona actualmente está alterada (en estado de alarma), el icono con el número que corresponde al número de la zona, estará en rojo. Si hay un fallo en la zona, también se mostrará en el panel de estado. Si la zona está desactivada en la configuración del equipo, la información de la zona no se mostrará.

\imgcapt{img/06-16-config-dashboard-02.png}{Pestaña 'Panel de estado', Zonas en estado: norma, alarma, cortocircuito, ruptura}

### Dispositivos inalámbricos

Para los dispositivos inalámbricos en el 'Panel de estado' se muestra la siguiente información:

* Comprobación de la calidad de comunicación;
* Estado actual del dispositivo.

\imgcapt{img/06-16-config-dashboard-03.png}{Pestaña 'Panel de estado', arriba - iconos de dispositivos inalámbricos, abajo - información detallada}

#### Estado del dispositivo

En la pestaña 'Dispositivos inalámbricos' se muestra la información sobre todos los dispositivos inalámbricos, grabados en la configuración del equipo.

Si el dispositivo está en situación de alarma, todo el icono estará en rojo y si hay algún fallo, se mostrará abajo del icono. Al pulsar sobre el icono del dispositivo inalámbrico, se puede obtener una información más detallada sobre su estado.

#### Valoración de la calidad de la señal de los dispositivos inalámbricos

El expansor inalámbrico, conectado al equipo, realiza la valoración de la calidad de la señal de cada dispositivo inalámbrico. Como indicador de calidad de comunicación sirve el anillo alrededor del número y el nombre del dispositivo. 

El color y el relleno del anillo corresponde a la relación medida por el modulo de radio, de _señal / ruido_ en la señal, recibida del dispositivo inalámbrico:

•	Excelente - color verde, anillo rellenado completamente;
•	Buena - color amarillo, anillo rellenado parcialmente;
•	Mala - color rojo, anillo rellenado parcialmente;
•	No hay comunicación - color rojo, anillo rellenado completamente.