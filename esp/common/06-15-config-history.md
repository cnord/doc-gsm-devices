\pagebreak

## Historial de eventos

La pestaña sirve para mostrar los eventos almacenados en la memoria no volátil del equipo

\imgcapt{img/06-15-config-history-01.png}{Pestaña 'Historial de eventos'}

Para cargar los eventos del equipo al configurador, hay que pulsar el botón 'Actualizar'. 

> La lista de eventos que se refleja en la pestaña 'Historial de eventos', no se actualiza automáticamente: para ver los cambios que tuvieron lugar en el historial de eventos en el transcurso del tiempo, hay que pulsar el botón 'Actualizar' otra vez.

\imgcapt{img/06-15-config-history-02.png}{Pestaña 'Historial de eventos', lista de eventos}

El volumen de la memoria no volátil del equipo permite almacenar no menos de 10.000 eventos. Pero en la pestaña 'Historial de eventos' se muestran no más de 200 últimos eventos. Mediante el botón Guardar en archivo se puede generar una lista completa de eventos en un archivo con la extensión _ *.csv_.

Al visualizar el historial para cada evento se muestra la siguiente información:

* el tiempo, cuando el evento fue creado por el equipo y guardado en la memoria no volátil;
* el código del evento que debe transmitirse a la consola de seguridad;
* la descripción de texto del evento;
* el numero del objeto para el cual fue creado el evento;
* el número de la partición;
* el número de la zona o el usuario;
* la información sobre el estado actual del evento (columna 'Enviado'):
	* si el evento está en espera de ser transmitido, se muestra una "raya";
	* si el evento fue enviado a la consola de seguridad, se muestra la información sobre el canal que se usó para la transmisión del evento, así como la hora cuando fue obtenida la confirmación sobre la recepción del evento;
	* si el envío del evento fue cancelado desde el configurador, se muestra la correspondiente información, así como la hora, cuando fue realizada la operación de cancelación de la transmisión. Para cancelar la transmisión a la consola de seguridad de todos los eventos que la esperan, hay que pulsar el botón "Marcar los eventos en el dispositivo como enviados".

Para cancelar la transmisión a la consola de seguridad de todos los eventos que la esperan, hay que pulsar el botón 'Marcar los eventos en el dispositivo como enviados'.

> Al crear un evento, este recibe un número de secuencia único. El orden de numeración de los eventos no depende de la hora establecida en el equipo: los eventos creados antes, tienen un número inferior, los eventos creados después - un número superior. En la casilla 'Historial de eventos' los eventos se reflejan en el orden inverso a su número: los eventos creados más tarde, se reflejan más arriba, y los eventos creados antes - más abajo en la lista.