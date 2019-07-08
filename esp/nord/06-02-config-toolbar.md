## Panel de control y panel de pestañas

### Panel de control

En la parte superior de la ventana principal del configurador se ubica el panel de control:

\imgcapt{img/06-02-config-nord-01.png}{Panel de control}

En la parte izquierda del panel de control se muestra la siguiente información:

* tipo de equipo;
* versión del software del equipo;
* versión del software del expansor inalámbrico, si está conectado;
* numero del objeto indicado en la configuración del equipo;
* número de serie del equipo.

El número de serie del equipo se le asigna al ser fabricado y es único para toda la familia de equipos fabricados por la compañía "C.Nord".

El botón "Leer" sirve para cargar en la interfaz del configurador los ajustes que actualmente están guardados en el equipo. Hay que recordar que si se realiza algún cambio de la configuración del equipo en el configurador, después de pulsar el botón "Leer", todos los cambios se perderán: las configuraciones realizadas en el configurador serán reemplazadas por las configuraciones cargadas del equipo.

El botón "Grabar" sirve para guardar los cambios de las configuraciones realizadas en el configurador, en el equipo.

El botón "Guardar..." Sirve para guardar en el archivo las configuraciones actuales que se muestran en el configurador. Mediante el botón "Abrir...", por su parte, se puede cargar la configuración del archivo.

> Para evitar errores, relacionados con la configuración de los canales de comunicación, se recomienda guardar en el archivo en el disco todas las configuraciones, relacionadas con la conexión al "Security Center" y a la "Nube", y en la configuración del equipo que se instala en el objeto, empezar por cargar en el configurador el archivo con estas configuraciones.

\pagebreak

### Panel de pestañas

\begin{wrapfigure}{L}{0.25\textwidth}
\begin{center}
\includegraphics{img/06-02-config-nord-02.png}
\end{center}
\vspace{-5pt}
\caption{Panel de pestañas}
\end{wrapfigure}

En la parte izquierda de la ventana principal del configurador se ubica el panel de pestañas, mediante el cual se realiza el cambio entre los grupos de configuraciones del dispositivo.

En la pestaña "Zonas" se realiza la configuración de los parámetros de las zonas por cable conectadas al equipo.

La pestaña «Dispositivos inalámbricos» sirve para conectar al equipo dispositivos - notificadores inalámbricos, llaveros, teclados y retransmisores. Esta pestaña se muestra en el configurador sólo si al equipo está conectado un expansor inalámbrico.

Los códigos de usuarios que armarán y desarmarán el sistema de seguridad del equipo se pueden establecer en la pestaña «Usuarios». Aquí también se pueden asignar al usuario una o varias llaves TM, así como especificar el llavero inalámbrico entregado al usuario. 

En la pestaña "Particiones" se puede realizar la configuración de las particiones del objeto. En esta pestaña se pueden especificar las zonas por cable y zonas inalámbricas conectadas a determinadas particiones, así como especificar los usuarios que pueden armar o desarmar el sistema de seguridad de las particiones.

En la pestaña "Varios" se pueden configurar los intervalos que se usan en la repetición de eventos transmitidos al "Security Center", especificar el tipo de la fuente de alimentación de reserva conectada al equipo, activar o desactivar el avisador acústico y óptico, etc.

Las configuraciones que debe usar el equipo al transferir eventos por los canales de comunicación GSM y Ethernet se pueden establecer en la pestaña "Security Center".

Los parámetros que determinan la transmisión de eventos por el canal de radio, se indican en la pestaña "Radio".

La pestaña "Nube" sirve para especificar a qué "Nube" debe conectarse el equipo para que el técnico tenga la posibilidad de acceder de forma remota al mismo. Los valores de los parámetros en esta pestaña hay que modificarlos sólo si se usa una "Nube privada", los parámetros para la conexión a la "Nube" deben especificarse de forma manual.

En la pestaña "Ethernet" se puede cambiar la configuración de la conexión del equipo a la red local. Esta pestañas se refleja en el configurador sólo si al dispositivo está conectado el módulo opcional "Adaptador Ethernet".

Los parámetros de los operadores de comunicación móvil, tales como la dirección del punto de acceso (APN), el nombre del usuario y la contraseña para el acceso a los servicios de transmisión de paquetes de datos, se pueden modificar en la pestaña "Operadores GSM".

La pestaña "Sistema automático" sirve para programar el comportamiento del dispositivo dependiendo de unas u otras condiciones. En calidad de condiciones pueden actuar cualesquiera eventos creados por el equipo o el tiempo. Y en calidad de acciones que el equipo puede realizar, actúan los armes o desarmes, así como las acciones con los colectores abiertos.

Los eventos que se almacenan en la memoria no volátil del equipo se pueden ver en la pestaña "Historial de eventos". Aquí también se pueden marcar como enviados los acontecimientos que están a la espera de ser entregados al "Security Center" en la cola de transmisión.

La pestaña "Panel de estado" muestra en tiempo real el estado de los canales de comunicación de las zonas por cable y zonas inalámbricas.