\pagebreak

## Teclado K16-LCD

\imgcapt{img/k16-lcd.png}{Teclado К16-LCD}

Mediante el teclado K16-LCD el usuario puede realizar las siguientes tareas:

* conocer el estado de la partición (armada / desarmada);
* armar la partición o desarmar la partición,
* informarse de un retraso de entrada o salida que empezó o continua;
* informarse del estado de todo el equipo;
* informarse de la existencia de fallos en la alimentación eléctrica del equipo;
* informarse de la existencia de fallos.

### Arme y desarme

En el equipo está realizada la posibilidad de arme y desarme del sistema de seguridad de varias particiones con un código de usuario. El ajuste de particiones que pueden ser armadas o desarmadas con un código en concreto, se realiza al realizar la configuración del equipo.

**Arme y desarme sin selección de partición**

Si al código de usuario está asignada sólo una partición, al teclear el código se realizará un intento de cambiar el estado de seguridad de esta partición:

* si la partición está armada, al teclear el código será desarmada;
* si la partición está desarmada, al teclear el código empezará el procedimiento de arme de la partición.

Si el arme está permitido, se realiza el arme o se activa la cuenta del intervalo de retraso de salida que va acompañado con una indicación acústica, LED y en pantalla.

Si el arme está prohibido, se realiza una indicación acústica de denegación del arme y en la pantalla del teclado se muestra el motivo, por el cual no es posible realizar el arme.

**Arme y desarme con selección de partición** 

Si al código de usuario están asignadas varias particiones, primero el usuario debe seleccionar la partición, cuyo estado desea cambiar y después teclear el código.

Para seleccionar la partición, el usuario primero debe introducir el numero de la partición cuyo estado desea cambiar y a continuación pulsar el botón '#'.

> *Vamos a suponer que el usuario quiere desarmar la partición número 2 mediante el código 1234. Para hacerlo el usuario debe pulsar en el teclado la correspondiente secuencia de teclas: 2#1234*

Si el usuario tecleó el código correcto, bajo el cual están asignadas varias particiones, pero no eligió previamente la partición, cuyo estado desea cambiar, tal código se procesa como incorrecto.

**Denegación del arme**

La 'Denegación del arme' - es la imposibilidad de armar el sistema de seguridad del objeto, si la alarma de seguridad en el objeto no funciona correctamente, o si el arme del sistema de seguridad está prohibido por el impago de los servicios de seguridad.

Están previstos los siguientes motivos de denegación del arme:

* fallo de una o varias zonas;
* alarma en una o varias zonas;
* ausencia de comunicación con el programa de la consola por el canal IP;
* ausencia de 220 V en el objeto;
* impago de los servicios de seguridad;
* está abierto el cuerpo del equipo.

### Indicación LED

El teclado K16-LCD dispone de dos LED: 'Avería' y 'Seguridad'.

**LED 'Seguridad'**

Para el LED se prevén dos modos de indicación: modo de guardia y modo de arme.

En el modo de guardia el LED 'Seguridad' muestra el estado de seguridad de todo el equipo:

* si para el equipo está configurada sólo una partición, el LED está encendido si ésta partición está armada, y apagado si está desarmada;
* si para el equipo están configuradas varias particiones, el LED está encendido si todas las particiones están armadas, y apagado si aunque sea una partición está desarmada;
* sin ninguna de las condiciones descritas anteriormente se cumple, el LED está apagado.

En el modo de arme el LED 'parpadea rápido' durante el intervalo de retraso de salida.

**LED 'Avería'**

El LED sirve para indicar la ausencia de la alimentación principal, así como para la indicación de fallo de la fuente de alimentación de reserva:

* el LED está encendido si está presente la alimentación principal y no está presente la fuente de alimentación de reserva, está descargada o no funciona;
* el LED 'parpadea lentamente' sino está presente la alimentación principal;
* el LED está apagado, si está presente la alimentación principal y no hay fallos en la alimentación de reserva.

> *El fallo de la fuente de alimentación de reserva se indica sólo en el caso, sin en la configuración del equipo en calidad de fuente de alimentación de reserva se indica la batería, así como si está activado el control de calidad de la fuente de alimentación de reserva.*

### Indicación acústica

La pulsación de teclas en el teclado va acompañada con una señal acústica que confirma la pulsación.

La cuenta del intervalo de retraso de entrada o intervalo de retraso de salida se indica con un sonido intermitente, que se reproduce durante todo el intervalo de retraso. La indicación acústica de retraso de entrada o salida se desactiva al pulsar cualquier tecla en el teclado.

> *A diferencia del LED 'Seguridad', que sólo indica el retraso de salida, el avisador acústico, integrado en el teclado K16-LCD indica también el retraso de salida y el retraso de entrada.*

### Indicación en pantalla

El teclado K16-LCD dispone de un indicador LCD de dos líneas, en cada línea del cual se pueden mostrar hasta 16 caracteres alfanuméricos.

La información que se refleja en la pantalla del teclado K16-LCD, depende del estado actual del equipo, así como de las operaciones que realiza el usuario.

**Indicación de guardia - el sistema de seguridad del equipo está completamente desarmado**

Si todas las particiones del equipo están desarmadas y el usuario no realiza ningunas operaciones con el teclado, en la pantalla del teclado se muestra la fecha actual y la hora actual, así como la información sobre los fallos corrientes del equipo, en caso de que existan.

La información sobre la fecha y la hora actual se muestra en la primera línea de la pantalla.

La información sobre los fallos existentes se muestra en la segunda línea de la pantalla.

Ejemplo de una pantalla de guardia del teclado, cuando el equipo está completamente desarmado:

	12.02.2015 10:25
	220V NO CONECTADO

Si en el equipo hay varios fallos, en la pantalla del teclado se muestra sólo uno, el de mayor prioridad.

Lista de fallos (enumerados en el orden de prioridad al mostrarse):

\definecolor{light-gray}{gray}{0.7}
\renewcommand{\arraystretch}{1.4}
\begin{tabularx}{\textwidth}{lX}
\textbf{Fallo} & \textbf{Descripción} \\ \midrule
\texttt{¡PAGAR LOS SERVICIOS DE SEGURIDAD!} & La línea se muestra si en las configuraciones del objeto que se realizan en el software 'Security center' fue establecido uno de los valores que condicionan que hay que informar al usuario del panel de control sobre la necesidad de pagar los servicios de seguridad. \\ \arrayrulecolor{light-gray}\hline
\texttt{220V NO CONECTADO} & La línea se muestra si no está presente la alimentación principal del equipo. Al configurar el equipo puede activarse la prohibición de arme del sistema de seguridad del equipo en caso de que no esté presente la alimentación principal. \\ \arrayrulecolor{light-gray}\hline
\texttt{NO HAY COMUNICACIÓN IP}  & La línea se muestra en caso de que no haya comunicación IP (por Ethernet o GPRS) con el 'Security Center'. Al realizar la configuración del equipo puede activarse la prohibición de arme del sistema de seguridad del equipo en caso de ausencia de comunicación IP con el 'Security Center'. \\ \arrayrulecolor{light-gray}\hline
\texttt{¡CUERPO ABIERTO!} & La línea se muestra si el cuerpo del equipo está abierto. \\ \arrayrulecolor{light-gray}\hline
\texttt{LA ZONA NN NO FUNCIONA} & La línea se muestra si en la zona por cable o zona inalámbrica, conectada al equipo, se detecta un fallo: ruptura o cortocircuito en la zona, ausencia de comunicación con el dispositivo inalámbrico, descarga de la fuente de alimentación del dispositivo inalámbrico, etc.\\ \arrayrulecolor{light-gray}\hline
\texttt{BATERÍA NO CONECTADA} & La línea se muestra si la fuente de alimentación de reserva no está conectada al equipo. \\ \arrayrulecolor{light-gray}\hline
\texttt{BATERÍA DESCARGADA} & La línea se muestra si el valor de tensión medido en los bornes para la conexión de la fuente de alimentación de reserva evidencia que la fuente de alimentación de reserva está descargada. \\
\bottomrule
\end{tabularx}

**Indicación de guardia - sistema de seguridad del equipo parcialmente armado**

Si una parte de las particiones del equipo está armada y una parte está desarmada y el usuario no realiza ningunas operaciones con el teclado, en la pantalla del teclado se muestra la hora actual, así como la lista de particiones armadas.

La información sobre la existencia de particiones armadas y la hora actual se refleja en la primera línea de la pantalla.

La línea de los números de particiones armadas se refleja en la segunda línea de la pantalla.

Ejemplo de la pantalla de guardia del teclado, cuando el equipo está parcialmente armado:

	ARMADO       10:25
	PARTICIONES  1,4,5

**Indicación de guardia - equipo completamente armado**

Si el equipo está completamente armado y el usuario no realiza ningunas operaciones con el teclado, en la pantalla del teclado se muestra la hora actual, así como la información de que el equipo está completamente armado.

Ejemplo de la pantalla de guardia del teclado, cuando el equipo está completamente armado:

	ARMADO        10:25
	TODAS LAS PARTICIONES

> Si para el equipo sólo está configurada una partición, al armarla la línea 'TODAS LAS PARTICIONES' no se muestra.

**Indicación de arme**

Si el arme está permitido y no hay retraso de salida, en la primera línea de la pantalla del teclado durante 3 segundos se muestra la frase 'ARME...', después de ello la pantalla del teclado cambia al modo de guardia que corresponde al estado del sistema de seguridad del equipo.

Si hay un retraso de salida, durante el retraso de salida en la primera línea de la pantalla del teclado se muestra la frase 'ARME... NN', donde NN - es el tiempo en segundos, durante el cual se realizará el retraso de salida. La información sobre el tiempo durante el cual durará el retraso de salida se actualiza cada segundo.

> La indicación LED, acústica y en pantalla de retraso de salida se desactiva al pulsar cualquier tecla en el teclado.

Si en la configuración del objeto que se realiza en el software 'Security center' fue establecido uno de los valores que condicionan que hay que informar al usuario del panel de control sobre la necesidad de pagar los servicios de seguridad durante el arme y desarme, en la segunda línea de la pantalla del teclado se muestra la frase '¡PAGAR LOS SERVICIOS DE SEGURIDAD!'.

Ejemplo de la pantalla del teclado con indicación de arme:

	ARME...     18
	¡PAGAR LOS SERVICIOS DE SEGURIDAD!

**Indicación de desarme**

Si el desarme está permitido, en la primera línea de la pantalla del teclado durante 3 segundos se muestra 'DESARME...', después de ello la pantalla del teclado cambia al modo de guardia que corresponde al estado del sistema de seguridad del dispositivo.

Si en la configuración del objeto que se realiza en el software 'Security center' fue establecido uno de los valores que condicionan que hay que informar al usuario del panel de control sobre la necesidad de pagar los servicios de seguridad durante el arme y desarme, en la segunda línea de la pantalla del teclado se muestra la frase '¡PAGAR LOS SERVICIOS DE SEGURIDAD!'.

Ejemplo de la pantalla del teclado con indicación de desarme:

	DESARME...     

**Indicación de denegación del arme**

Si al armar el sistema de seguridad será detectado el motivo por el cual no es posible realizar el arme, en la pantalla del teclado se muestra la información de denegación del arme y también se muestra el motivo de la denegación.

Aparte de ello, para la indicación de la denegación del arme se usa la indicación acústica: cuatro señales acústicas separadas.

En la primera línea de la pantalla del teclado se muestra la frase 'DENEGACIÓN DEL ARME'.

En la segunda línea de la pantalla del teclado se muestra uno de los posibles motivos de denegación del arme:

* \texttt{¡PAGAR LOS SERVICIOS DE SEGURIDAD!}
* \texttt{220V NO CONECTADO}
* \texttt{NO HAY COMUNICACIÓN IP}
* \texttt{¡CUERPO ABIERTO!}
* \texttt{ZONA NN FALLO} 
* \texttt{ZONA NN ALARMA}

> Arriba se especifican las frases mostradas al producirse la denegación del arme, correspondientes a los motivos que produjeron la denegación

La indicación en pantalla de denegación del arme se muestra durante 5 segundos y a continuación la pantalla del teclado cambia al modo de guardia que corresponde al estado de seguridad del equipo.