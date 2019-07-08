\pagebreak

## Zonas {#config-zones}

En la pestaña 'Zonas' se realiza la configuración de los parámetros de las zonas por cable, conectadas al equipo.

\imgcapt{img/06-03-config-nord-01.png}{Pestaña 'Zonas'}

### Expansores

Sin el uso de equipos adicionales al equipo 'Nord GSM' se pueden conectar hasta 8 zonas por cable. Si se usa el expansor de zonas por cable 'EW-8' o 'EW-12', la cantidad de zonas por cable aumenta hasta 16.

#### 'EW-8'

Si al equipo está conectado el expansor 'EW-8' hay que marcar la casilla para el parámetro 'EW-8' conectado', entonces el mecanismo de solicitud de zonas por cable cambia y la cantidad total de zonas en las pestañas aumenta hasta 16.

El esquema de conexión del expansor al equipo, así como los esquemas de conexión de las zonas al expansor, se muestran en el apartado [Conexión del expansor 'EW-8'](#install-wze-8).

#### 'EW-12'

Si al equipo está conectado el expansor 'EW-12', en el configurador aparecerán nuevas zonas de forma automática. Los aspectos particulares del funcionamiento y el esquema de conexión del expansor al equipo se muestran en el apartado [Conexión del expansor 'EW-12'](#install-wze-12).

El 'EW-12' no se puede conectar conjuntamente con el 'EW-8'.

### Numeración de zonas

Los números de las zonas que se muestran en el configurador corresponden al marcaje de los bornes en la placa de circuito impreso: 'Z1' – zona No.1, 'Z2' – zona No.2 y sucesivamente.

Si al equipo está conectado el expansor 'EW-12', las zonas del expansor corresponden a los números - 9-16, es decir el borne 'Z1' en el expansor corresponde a la zona No.9 en el configurador, el borne 'Z2' - a la zona No.10, (. . . ), el borne 'ZN' corresponde a la zona (N+8).

Si al equipo está conectado el expansor 'EW-8', el borne 'Z1' sirve para la conexión de dos cables de señal de las zonas No.1 y No.9, el borne 'Z2' - para los cables de las zonas No.1 y No.10 y sucesivamente. En otras palabras, el borne 'N' sirve para la conexión de cables de las zonas 'N' y 'N+8'.

### Activación y desactivación de la zona

El botón de activación / desactivación de la zona se encuentra en la columna izquierda, directamente detrás del número de la zona. El color del botón refleja el estado actual de la zona: si el botón está verde, la zona está activada, si el botón está rojo, la zona está desactivada. La inscripción en el botón corresponde con la operación que será realizada al pulsar el botón: en el botón verde está escrito 'Desactivar', porque al pulsar el botón la zona será desactivada y en el botón rojo está escrito 'Activar', ya que al pulsar el botón rojo la zona será activada.

Para que el equipo empiece a controlar el estado de la zona y también para que se pueda realizar la configuración de la zona, hay que activarla. Si en el equipo existe aunque sea una zona activada con el tipo 'De seguridad', 'De seguridad sin sirena' o 'De paso', tal zona debe ser añadida a la partición.

Si la zona por cable está desactivada, su estado, así como los cambios del estado se ignoran por el equipo. Aparte de esto, si la zona está desactivada, no se puede añadir a la partición: no se reflejará en la lista de zonas disponibles para añadir a la partición..

La desactivación de la zona puede ser útil si temporalmente hay que suspender el control de la zona, por ejemplo, a causa de su mal funcionamiento. La zona se puede desactivar al conectar al equipo de forma local (por USB) y también al conectar de forma remota desde el configurador web.

### Tipo de zona {#config-zones-types}

La fijación del tipo de zona es el momento clave en la configuración de la zona, ya que este parámetro determina por completo la reacción del equipo hacia los cambios del estado de la zona. Del tipo que se indica para la zona, depende lo siguiente:

* si el equipo reaccionará sobre el cambio de la zona al estado 'Alarma' siempre, o sólo en el momento cuando la partición, a la cual está conectada la zona está armada;
* el código del evento que será transmitido a la consola de seguridad al producirse una alarma en la zona;
* si será activada la sirena al producirse una alarma en la zona;
* si será desactivada y posteriormente activada la alimentación en el borne 'SMOKE' al producirse una alarma en la zona;
* si se controlará el estado normal de la zona al armar el sistema de seguridad de la partición, en la cual está conectada.

\pagebreak

Las diferencias entre los tipos de zonas por cable se muestran en la tabla más abajo:

\definecolor{light-gray}{gray}{0.7}
\renewcommand{\arraystretch}{1.4}
\newcolumntype{Y}{>{\raggedright\arraybackslash}X}
\begin{tabularx}{\textwidth}{llccY}
\toprule
\textbf{Tipo de zona} & \textbf{Códigos de eventos} & \textbf{Arme/desarme} & \textbf{Sirena} & \textbf{Observación} \\
\midrule
De seguridad & E130 / R130 & Si & Si \\
\arrayrulecolor{light-gray}\hline
De seguridad sin sirena & E146 / R146 &  Si & No \\
\arrayrulecolor{light-gray}\hline
De paso & E130 / R130 & Si & Si & La alarma en la zona se procesa de una forma especial durante el arme y el desarme (ver más abajo). \\
\arrayrulecolor{light-gray}\hline
De incendio & E110 / R110 & No & Si & La alarma en la zona va acompañada por un reseteo de la alimentación de los sensores de incendio (ver más abajo). \\
\arrayrulecolor{light-gray}\hline
Botón de emergencia con fijación & E120 / R120 & No & No \\
\arrayrulecolor{light-gray}\hline
Botón de emergencia sin fijación & E120 / R120 & No & No & Para la zona de este tipo se usa un intervalo separado de repetición de alarmas (ver más abajo). \\
\arrayrulecolor{light-gray}\hline
Tamper de sensores & E144 / R144 & No & Si \\
\arrayrulecolor{light-gray}\hline
24 horas de seguridad & E133 / R133 & No & Si \\
\arrayrulecolor{light-gray}\hline
24 horas & E150 / R150 & No & Si \\
\arrayrulecolor{light-gray}\hline
Fuga de agua & E154 / R154 & No & Si \\
\arrayrulecolor{light-gray}\hline
Fuga de gas & E151 / R151 & No & Si \\
\arrayrulecolor{light-gray}\hline
Sensor de temperatura & E158 / R158 & No & Si & Alta temperatura \\
\arrayrulecolor{light-gray}\hline
Sensor de temperatura & E159 / R159 & No & Si & Baja temperatura \\
\bottomrule
\end{tabularx}
\captionof*{table}{Tipos de zonas por cable}

Si para el tipo de zona se indica 'Sí' en la columna 'Arme / desarme', significa que la zona de tal tipo puede ser armada o desarmada junto con cualquier partición a la cual está conectada. Si para el tipo de zona se indica 'No' en la columna 'Arme / desarme', esto significa que la zona de tal tipo está armada *siempre*.  

Si para el tipo de zona se indica 'Sí' en la columna 'Sirena', esto significa que al producirse una alarma en la zona de tal tipo será activada la sirena.

#### Tipo de zona 'De paso'

Si para la zona está indicado el tipo 'De paso', tal zona se procesa de una forma especial durante el arme y el desarme.

Al armar el sistema de seguridad el estado de la zona de paso se ignora: el sistema de seguridad del equipo será armado incluso si la zona configurada como de paso está en situación de alarma. Aparte de esto, el estado de la zona de paso se ignora hasta el mismo instante de finalización del retraso de salida para todas las zonas de la partición en la cual se arma el sistema de seguridad. Con ello, el retraso de salida para la misma zona de paso no se puede establecer, esta zona siempre tiene un retraso de salida igual al mayor retraso de salida de otras zonas incluidas en la partición.

Si la partición en la cual está incluida la zona de paso está armada y la zona de paso pasa a situación de alarma, primero se realiza la verificación del inicio de la cuenta de retraso de salida para otra zona de la partición. Si se está realizando la cuenta de retraso de salida, la alarma en la zona de paso se ignora. Si no hay retraso de salida, en la zona de paso se creará el evento 'Alarma' (**E130**).

#### Tipo de zona 'De incendio'

Al formarse la alarma en las zonas con el tipo 'De incendio' el equipo aplica el mecanismo 'Atención' / 'Incendio': mecanismo basado en la lógica de acción reiterada del avisador después del reseteo de la alimentación. El equipo pasa al estado generalizado 'Incendio' que va acompañado con la activación de la sirena de incendio, así como con la repetición de alarmas de incendio. Este estado se guarda en la memoria del equipo, es decir, en caso de reseteo de la alimentación o reinicio del sistema del panel, el estado generalizado 'Incendio' se mantiene.

#### Tipo de zona 'Botón de emergencia sin fijación'

Si para la zona se indica el tipo 'Botón de emergencia sin fijación', tal zona tiene un intervalo propio de repetición de alarmas.

Para este tipo de zona el intervalo de repetición de alarmas indicado para el equipo no se usa. En vez de éste se establece un valor equivalente a 5 segundos. De esta forma, la reiterada pulsación del botón de emergencia no antes de 5 segundos generará la transmisión de un evento más a la consola.

#### Tipo de zona 'Sensor de temperatura'

Si al equipo está conectado un sensor de temperatura por cable y el modo de solicitud de la línea 1-Wire está activado (se activa en la pestaña [Varios](#control-indication)), éste aparece en la pestaña 'Zonas' de forma automática y tendrá un número de zona en el diapasón de 48 a 51. Para los sensores de temperatura debe especificarse el límite superior e inferior, al alcanzar los cuales se formarán las alarmas. Diapasón de valores permitidos para los en límites: de 55 °C bajo cero a 127 °C sobre cero. Más información [sobre la conexión de sensores de temperatura](#install-temp).En total al equipo se pueden conectar 4 sensores de temperatura.

### Estado normal de la zona

Mediante el valor que se establece en la columna 'Norma', se puede determinar el estado *normal* para la zona de alarma:

* si el estado normal para la zona está determinado como *cerrado*, en tal zona deben usarse avisadores que también disponen de contactos cerrados de su relé de salida en estado normal. En caso de alarma tales avisadores deben *abrir* los contactos del relé de salida;
* si el estado normal para la zona está determinado como *abierto*, en tal zona deben usarse avisadores que disponen de contactos *abiertos* de su relé de salida en estado normal. En caso de alarma tales avisadores deben *cerrar* los contactos del relé de salida.


Hay que destacar que la gran mayoría de los avisadores infrarrojos y de contacto magnético modernos disponen de contactos normalmente cerrados de su relé de salida. De esta forma, para las zonas en las cuales se incluyen estos avisadores, el estado normal debe determinarse como *cerrado*.

### Resistencias terminales

Mediante el valor que se establece en la columna 'Resistencias' se puede indicar la cantidad de resistencias terminales instaladas en la zona.

Si al conectar la zona no se usan resistencias terminales, para tal zona el equipo puede determinar sólo uno de dos estados: 'Alarma' o 'Norma'. Tal zona es muy vulnerable: si el estado normal para la zona se determina como *abierto*, es suficiente simplemente con cortar el cable de la zona en cualquier lugar accesible y la zona para siempre se quedará en estado normal, en tal zona nunca se producirá una alarma. Nada mejor será una zona cuyo estado normal está determinado como *cerrado*: si se consigue cerrar los cables de alarma de la zona en cortocircuito, en esta zona tampoco nunca habrá una señal de alarma.

Una resistencia terminal instalada en la zona permite diferenciar un fallo en la zona de una alarma. Qué tipo de fallo puede ser determinado - ruptura o cortocircuito - depende del estado normal de la zona: para el estado normal de la zona *abierto* una resistencia terminal permite determinar la ruptura de la zona y para el estado normal *cerrado* - cortocircuito. 

Dos resistencias terminales permiten determinar la ruptura y el cortocircuito para la zona con cualquier estado normal.

> Para *minimizar* los fallos de las zonas de alarma, se recomienda conectar a las zonas una resistencia terminal.

### Retraso de entrada

El parámetro 'Retraso de salida' permite posponer la creación de la señal 'Alarma' por el tiempo indicado en calidad de valor para este parámetro. Como norma, este parámetro se establece para las zonas que el usuario debe alterar para llegar al dispositivo de control de la alarma. En calidad de ejemplos extendidos de tales zonas pueden servir los sensores de contacto magnético que protegen las puertas de entrada en los locales bajo alarma.

¿Cómo funciona el retraso de salida? Vamos a suponer que tenemos una zona, en la zona está conectado un avisador de contacto magnético instalado en la puerta de entrada a la oficina. Para esta zona fue establecido un retraso de salida igual a 15 segundos. El panel para teclear el código, con el que se puede desconectar la alarma de seguridad se encuentra dentro de la oficina, es decir hay que abrir la puerta de entrada para llegar al panel. El usuario abre la puerta de entrada, el avisador de contacto magnético se activa, pero el equipo no crea una alarma y empieza la cuenta del retraso de entrada. Si en el transcurso de 15 segundos el usuario introduce el código mediante el cual el sistema de seguridad será desactivado, no se creará una alarma, en vez de la alarma a la consola de seguridad se enviará un evento de desarme del sistema de seguridad del equipo. Si en el transcurso de 15 segundos no se desarma el sistema de seguridad del equipo, se creará una alarma.

El valor del parámetro 'Retraso de entrada' se puede especificar sólo para las zonas cuyo tipo está establecido como 'De seguridad' o 'De seguridad sin sirena'. Esto se debe a que las zonas de todos los demás tipos (excepto la 'De paso') no pueden ser armadas o desarmadas: el sistema de seguridad de esta zona siempre está activado. Lo que respecta al tipo de zona 'De paso', la zonas de este tipo se procesan durante el arme o desarme de una forma especial, según lo descrito más arriba en el apartado 'Tipos de zonas'.

#### Evento 'Alarma probable'

Al alterar la zona con retraso de entrada el equipo de forma incondicional crea el evento 'Alarma probable' (**E138**). En calidad de argumentos del evento se transmite el número de la zona alterada y el número menor de la partición a la cual está conectada esta zona. Si se alteran varias zonas con retraso de entrada, para cada zona se creará el evento 'Alarma probable'.

En algunos objetos el panel de control no se puede ubicar de una forma que se encuentre separada en una parte protegida del local. Normalmente a tales objetos se pueden atribuir pequeños locales: pabellones comerciales, garajes, pequeñas oficinas y apartamentos. Esto significa que durante la cuenta del retraso de entrada el panel de control puede ser estropeado. El evento 'Alarma probable' le permite a la consola de seguridad controlar el funcionamiento del equipo después de que empiece la cuenta de retraso de entrada: si después de empezar el retraso de entrada no se recibe el evento sobre el desarme del sistema de seguridad del equipo, es un motivo para informarse de lo que pasa en el objeto.

Para el control automático de recepción del desarme después de una posible alarma en el 'Security Center', hay que usar el procesador de eventos 'Entrada a través de la alarma' o el procesador de eventos 'Control de la cadena de eventos'.

### Retraso de salida

La asignación del parámetro 'Retraso de salida' es muy similar a la asignación del parámetro 'Retraso de entrada', pero sirve para darle al usuario la posibilidad de salir del local protegido después de armar el sistema de seguridad del equipo. El retraso de salida, normalmente se establece para las zonas que protegen las puertas de entrada en los locales protegidos.

Después de que el usuario realiza el arme de la partición (mediante el teclado, llavero inalámbrico o lector TM), el equipo comprueba el estado de todas las zonas, incluidas en la partición:

* si se detecta una zona que no funciona, el equipo deniega el arme;
* si se detecta una zona bajo alarma, el equipo también deniega el arme;
* si no hay zonas que nos funcionan o zonas bajo alarma, el equipo se arma y empieza la cuenta de retraso de salida, si tiene lugar.


El evento sobre el arme (**E401**) se crea directamente al realizar el arme, antes del inicio del retraso de salida, si tiene lugar. En calidad de argumentos del evento se transmite el número de la partición armada, así como el numero del usuario que realizó el arme.

Después de que haya empezado el retraso de salida, el equipo ignora el estado de todas las zonas para las cuales está establecido el retraso de salida, así como de las zonas con tipo 'De paso'. Si al usuario le da tiempo salir del local y cerrar la puerta de entrada antes de que finalice la cuenta de retraso de salida, no se producirá una alarma después del arme. Si alguna de las zonas será alterada después de que finalice el retraso de salida, se creará una alarma.

Para los dispositivos inalámbricos por actual se toma el estado que fue recibido durante la última solicitud del dispositivo. De esta forma, el usuario del sistema inalámbrico podrá tener que esperar mientras el avisador inalámbrico no devuelva el equipo a la norma. En el caso de que no se desee esperar, para los avisadores inalámbricos se puede establecer el mínimo retraso posible de salida.

Puede darse la situación que durante el arme no se pueda alcanzar el estado normal de una o varias zonas, por ejemplo si los avisadores en las zonas controlan una parte del teclado. En este caso las zonas hay que configurarlas como *de paso*. Las zonas de paso se describen más arriba con mayor detalle, en el apartado '*Tipos de zonas*'.

La alarma en las zonas con retraso de salida para el momento del arme se ignora. Esto se hace para que el usuario no tenga que comprobar y cerrar la puerta de entrada. Pero si desea tener la seguridad de que todas las zonas de alarma están bajo la norma para el momento del arme, se puede activar el control de alarma en las zonas con retraso de salida para el momento del arme. Para ello hay que marcar la casilla para los parámetros 'Prohibir el arme en caso de alarma en la zona con retraso de salida', que se encuentra en el apartado 'Varios', en el apartado 'Arme y desarme'.