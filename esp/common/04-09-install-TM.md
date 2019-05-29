\pagebreak


## Conexión del lector Touch Memory

El equipo dispone de una interfaz integrada para la conexión de lectores de llaves TM. Al equipo se pueden añadir hasta 32 llaves TM

El lector Toch Memory se conecta al equipo en los bornes LED, DATA y GND del grupo "Lector".

\imgcapt{img/04-09-install-tm.png}{Esquema de conexión del lector Touch Memory}

En vez del lector TM se puede conectar cualquier lector con emulación del protocolo Dallas Touch Memory (DS1990A). Por ejemplo, lectores Proxymity ("PS-01", "SR-Z2B").

Con ello, hay que tomar en consideración que para conectar algunos lectores que emulan el protocolo DS1990A, hay que desactivar el modo de solicitud continua de la interfaz 1-wire, que está activado de forma predeterminada. Para hacerlo, en el configurador hay que pasar a la pestaña [Varios](#control-indication) y desmarcar la casilla para el parámetro "Activar el modo de solicitud continua de la interfaz 1-Wire".

