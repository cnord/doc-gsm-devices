## Actualización remota del software en el dispositivo 

**Importante:** la configuración remota del software sólo funciona para dispositivos configurados con el uso de canales de comunicación IP: Ethernet o GPRS.

**Importante:** las funciones descritas en este apartado sólo funcionan si el dispositivo está conectado al software del 'Security Center'.

### Información sobre los objetos en la consola

Para la actualización remota de los 'firmware' en los equipos sirve la pestaña 'Actualización del software en los objetos' en el panel del técnico:

\imgcapt{img/remote-firmware.png}{}

En la presente pestaña se refleja la estadística de las versiones del software, agrupada por tipos de equipos. Por ejemplo, para el equipo 'Nord GSM':

\imgcapt{img/nord-firmware.png}{}

* 20 dispositivos 'Nord GSM' funcionan en esta consola
* versión actual del software para 'Nord GSM' - 5.40
* 10 dispositivos actualmente funcionan en una versión anticuada, entre ellos:
	* 6 - están señalados en rojo - no se tiene previsto actualizar
	* 4 - están señalados en amarillo - se encuentran en proceso de actualización

* 10 dispositivos funcionan en la versión actual del software para este dispositivo

Para abrir la página de actualización del software en los dispositivo de este tipo, hay que pulsar el botón 'Actualizar...'

### Proceso de actualización remota del software en el dispositivo

El proceso de actualización del software en el dispositivo se compone de varias fases y está realizado de una forma que se pueda trabajar incluso en redes con una señal GPRS muy inestable.

**Puesta en cola para la actualización**

Desde el panel del técnico a la 'Nube' se envía un comando para la puesta del dispositivo en cola para la actualización.

Si el dispositivo esta comunicado con la 'Nube', al dispositivo se enviará un comando para una conexión reiterada y la inicialización del proceso de la actualización.

Si el dispositivo no está conectado con la 'Nube', el proceso de la actualización no empezará hasta que el dispositivo no se conecte.

**Carga del 'firmware' actual**

Una vez que el dispositivo reciba el comando de actualización, empezará la carga del archivo con la versión actual del software. El volumen completo del archivo está comprendido entre los 200 Kb y los 500 Kb, dependiendo del tipo del dispositivo. La descarga del 'firmware' se realiza por partes, para reducir la influencia de las pérdidas de comunicación. 

La duración de la fase de descarga depende mucho de la calidad de la conexión y puede durar entre varios minutos en el canal Ethernet y hasta varias horas en el canal GPRS.

**Comprobación del archivo**

Después de la descarga completa del archivo del 'firmware' el equipo verifica su integridad y aptitud para usarse en este tipo de equipo y en esta versión hardware de la placa. Si todas las sumas de control coinciden y todas las verificaciones de compatibilidad se superan, el 'firmware' se marca como 'listo para la instalación'.

**Actualización**

A continuación el equipo espera el estado, cuando aunque sea una de las particiones sea desarmada y se reinicia para aplicar la actualización.

La fase de la actualización no dura más de 10 segundos.

**Activación**

Después de la actualización del 'firmware' el equipo se enciende normalmente. Todas las configuraciones y el estado de seguridad para las particiones se guardan tal como estaban antes de la actualización.

### Actualización del software en el objeto seleccionado

Si hay que comprobar las funciones de la nueva versión del software en uno o varios objetos antes de una instalación masiva, se puede usar la actualización del software en el objeto seleccionado.

Para ello, en la página de actualización del software hay que pulsar el botón 'Actualizar por número de objeto...':

\imgcapt{img/remote-update.png}{}

En el diálogo que aparece introducir el numero del objeto para la actualización:

\imgcapt{img/remote-update-single.png}{}

Y pulsar el botón 'Actualizar'. Después de esto el presente objeto será añadido a la cola para la actualización del software.

### Actualización del software en todos los objetos

Después de comprobar el software en varios objetos, se pueden añadir en cola para la actualización todos los demás objetos con la versión anterior del software.

Para esto en la página de actualización del software hay que pulsar el botón 'Actualizar el software en todos los objetos...'

En el diálogo que aparece:

\imgcapt{img/remote-update-all.png}{}

pulsar el botón 'Actualizar todos los objetos'. Después de esto todos los objetos de este tipo con una versión no actual del software serán añadidos en cola para la actualización.

### Detención del proceso de actualización

Si por algún motivo hay que detener el proceso de la actualización, éste se puede interrumpir hasta que el equipo no haya cargado por completo del archivo de la actualización.

Para hacerlo hay que pulsar 'Cancelar la actualización...' y confirmar la acción.