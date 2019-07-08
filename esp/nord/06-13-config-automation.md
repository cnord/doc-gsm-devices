\pagebreak

## Sistema automático {#config-automation}

El mecanismo 'Sistema automático' sirve para la programación del comportamiento del equipo dependiendo de unas u otras condiciones. En calidad de condiciones pueden actuar cualesquiera eventos, creados por el equipo o el tiempo. Y en calidad de acciones que el equipo puede realizar, actúan los armes o desarmes, así como las acciones con los colectores abiertos.

El sistema automático puede emplearse para la solución de las siguientes tareas en los objetos:

* arme y desarme de objetos por horario;
* arme y desarme de varias particiones al mismo tiempo;
* visualización del estado de la partición en el avisador óptico;
* activación de avisadores acústicos, conectados a los colectores abiertos del equipo;
* control de dispositivos exteriores, conectados a los colectores abiertos del equipo.


Al pasar a la pestaña 'Sistema automático' arriba en la ventana se muestran los botones con los cuales se pueden configurar las reglas.

\imgcapt{img/06-13-config-automation-01.png}{Botones para la creación de reglas, pestaña 'Sistema automático'}

> En el equipo ya está incluida la lógica de funcionamiento con avisadores ópticos y acústicos. Para la configuración de los colectores abiertos, a los cuales están conectados los avisadores, hay que usar los botones 'Notificador...' o 'Sirena...', dependiendo del tipo del avisador.

Al crear las reglas es importante recordar las siguientes afirmaciones:

* Si el colector se usa para la conexión de otros dispositivos (por ejemplo, bloque de comunicación remota), entonces no se puede usar en ningún otro sitio, incluyendo el control remoto que aparecerá un poco más tarde.
* Si el colector ya se usa para los roles (notificador, sirena), no puede usarse en ningún otro sitio.
* Si al equipo está conectado el EW-12 y la zona del expansor está activada en la configuración del dispositivo, el colector en la zona no se puede usar para las reglas del sistema automático o para otros roles.
* En total se pueden crear 8 reglas con el rol 'Notificador' o 'Sirena'. Es de notar que estas normas no dependen de la cantidad de reglas estándares del sistema automático.


### Notificador

#### Conexión del avisador óptico

Para conectar el notificador al equipo, hay que hacer lo siguiente:

* El cable 'Positivo' del avisador conectarlo a cualquier salida positiva del panel de control, por ejemplo a la salida para la alimentación del teclado o las zonas.
* El cable 'Negativo' del avisador debe conectarse a uno de los siete colectores abiertos: FIRE, DEFECT, LED_G, LED_Y, FIRE2, DEFECT2, DISABL.


\imgcapt{img/06-13-config-automation-03.png}{Conexión del avisador óptico al dispositivo}

Si al Nord está conectado el expansor EW-12, se pueden incorporar los bornes 'Z1' - 'Z8' del expansor.
A los equipos se puede conectar cualquier avisador óptico con una tensión de alimentación de 12 V. La corriente máxima conmutada no debe superar los 250 mA.


#### Configuración de la regla

Para el avisador óptico que indica el estado del objeto o la partición hay que configurar la regla con el rol 'Notificador'. Para crear la regla en la pestaña 'Sistema automático' hay que pulsar el botón 'Notificador' y seleccionar la salida a la cual está conectado el avisador. 
Si en el equipo hay varias particiones configuradas, al crear la regla hay que indicar la partición para la cual el informador reflejará el estado.

\imgcapt{img/06-13-config-automation-02.png}{Creación de la regla 'Notificador'}

#### Descripción del funcionamiento del avisador

Si la regla 'Notificador' está configurada para mostrar el estado de la partición:

* El Notificador permanece encendido permanentemente, si la partición está armada;
* El Notificador no está encendido si la partición está desarmada;
* El Notificador parpadea si la partición está en situación de alarma;
* El Notificador parpadea con destellos dobles durante el retraso de la salida.


Si la regla 'Notificador' está configurada para mostrar el estado del objeto:

* El Notificador permanece encendido permanentemente, si todas las particiones están armadas;
* El Notificador no está encendido si aunque sea una de las particiones está desarmada;
* El Notificador parpadea si aunque sea una de las particiones está en situación de alarma;
* El Notificador parpadea con destellos dobles durante el tiempo de retraso de la salida


### Sirena

#### Conexión del avisador acústico

La conexión de la sirena al colector abierto se realiza de la siguiente forma:

* El cable 'Positivo' del avisador puede ser conectado a cualquier salida positiva del panel de control, por ejemplo a la salida para la alimentación del teclado o las zonas.
* El cable 'Negativo' del avisador debe conectarse a uno de los siete colectores abiertos: FIRE, DEFECT, LED_G, LED_Y, FIRE2, DEFECT2, DISABL.


Si al Nord está conectado el expansor EW-12, se pueden incorporar los bornes 'Z1' - 'Z8' del expansor. 
A los equipo se puede conectar cualquier avisador óptico con una tensión de alimentación de 12 V. La corriente máxima conmutada no debe superar los 250 mA.

#### Configuración de la regla

Para el avisador acústico hay que configurar la regla con el rol 'Notificador'. Para crear la regla en la pestaña 'Sistema automático' hay que pulsar el botón 'Notificador' y seleccionar la salida a la cual está conectada la sirena.

\imgcapt{img/06-13-config-automation-04.png}{Creación de la regla 'Sirena'}

La sirena conectada al colector abierto se diferencia de la sirena conectada a la salida del mismo nombre 'Sirena' ya que en el primer caso el equipo no controla el estado de esta línea. Para configurar los parámetros del sonido de la sirena hay que ir al bloque [Sirena](#config-misc-siren) de la pestaña Varios.

### Varios

Aparte de las reglas predeterminadas, en el equipo se pueden crear hasta 16 otras reglas. Al darse las condiciones especificadas en la regla, el equipo puede realizar el arme y el desarme de una o varias particiones, cerrar o abrir la salida discreta, así como empezar el cierre o la apertura periódica de la salida discreta con el intervalo especificado.

\imgcapt{img/06-13-config-automation-05.png}{Ventana de creación de la regla}

#### Configuración de la regla

Analizaremos la configuración de las reglas en un ejemplo en concreto.

*Objetivo*

Configurar el arme de la partición No.1 por horario a las 19 horas 30 minutos los martes y los miércoles.

*Solución*

Para la solución del objetivo planteado hay que crear una acción que realice el arme de la partición por horario.

1. En la pestaña 'Sistema automático' pulsar el botón 'Varios'.
2. En el campo 'Acción' de la lista emergente seleccionar el valor 'Armar el sistema de seguridad'
3. En el campo 'Partición' seleccionar el valor '1'.
4. En el campo 'Condición' seleccionar el valor 'por horario'.
5. Mediante los menús emergentes en el campo 'Tiempo' establecer el valor '19:30'.
6. En el campo 'Día de semana' seleccionar el valor 'indicar'. En la lista de días de semana que apareció dejar marcadas las casillas 'm' y 'x'. Desmarcar las demás casillas.


\imgcapt{img/06-13-config-automation-06.png}{Ventana de creación de la regla}

7. Pulse 'OK' para guardar la regla. Las reglas entrarán en vigor después de guardar la configuración en el equipo.

\imgcapt{img/06-13-config-automation-07.png}{Todas las normas creadas}

En el presente ejemplo se analiza el arme automático del sistema de seguridad, sin embargo en calidad de acción se puede indicar el desarme del sistema de seguridad del objeto. En este caso, el objeto se desarmará según el horario especificado. También se puede configurar el cierre y/o apertura automática de las salidas discretas del equipo. 

Se puede configurar el arme de todas las particiones del objeto mediante el valor 'Todas las particiones' el campo 'Partición'. Para configurar el arme de varias particiones determinadas, para cada una hay que realizar la configuración del arme por separado.

El arme se puede asignar para días determinados de la semana, como en el ejemplo expuesto; para cada día; sólo para los días de semana (de lunes a viernes); también - sólo para los fines de semana.

El arme automático, al igual que cualquier otra acción, puede realizarse no sólo por horario, sino también por evento. En este caso hay que conocer el código del evento que se usará en la regla.
