### Intervalos

\imgcapt{img/06-07-config-nord-01.png}{Pestaña 'Varios', apartado 'Intervalos'}

#### Intervalo de repetición de alarmas

Mediante el parámetro 'Intervalo de repetición de alarmas' se puede establecer el intervalo con el cual el dispositivo creará alarmas *similares* y las transmitirá a la consola de seguridad. Se consideran *similares* las alarmas que surgieron en la misma zona por cable y fueron transmitidas por el mismo avisador inalámbrico.

El valor del parámetro 'Intervalo de repetición de alarmas' se aplica para las zonas de todos los [tipos](#config-zones-types), a excepción de las zonas con el tipo 'De incendio' y 'Botón de emergencia sin fijación'. El intervalo de repetición de alarmas para las zonas con el tipo 'Botón de emergencia sin fijación' siempre es igual a 5 segundos y el intervalo de repetición de alarmas para las zonas con el tipo 'De incendio', se asigna por un parámetro aparte (ver más abajo).

> ¿Para qué sirve este parámetro? En primer lugar, para reducir la cantidad de eventos que se transmitirán a la consola de seguridad: un evento de emergencia puede ser completamente suficiente para que el operador empiece a procesar la alarma en el objeto. La alarma reiterada en la misma zona, como norma, no cambiará nada. En el caso de que el dispositivo detecte una alarma en otra zona, tal alarma será transmitida a la consola y para esta zona empezará la cuenta del propio intervalo de repetición de alarmas.

Si para el parámetro 'Intervalo de repetición de alarmas' fue establecido cualquier valor numérico, el dispositivo formará eventos por la zona concreta de la siguiente forma:

* al detectar una alarma en la zona se creará un evento de alarma y empezará la cuenta del intervalo establecido;
* al detectar un reseteo de la alarma en la zona se creará un evento de reseteo, la cuenta del intervalo establecido continuará;
* en caso de creación reiterada de una alarma o reseteo de una alarma en la zona los eventos no se crearán hasta que no finalice la cuenta del intervalo establecido.


> El valor numérico significa que durante el intervalo sólo será transmitida una alarma y reseteo por una de las zonas.

Si para el parámetro 'Intervalo de repetición de alarmas' está establecido el valor 'No repetir', el dispositivo formará los eventos de la siguiente forma:

* al detectar una alarma en la zona se creará un evento de alarma y empezará la espera del reseteo de la alarma en la zona;
* el evento reiterado sobre la alarma en la zona no se creará hasta que en la zona no se forme un evento de reseteo de la alarma;
* al detectar el reseteo de la alarma en la zona, se formara un evento de reseteo, la espera del reseteo de la alarma en la zona finalizará, el equipo creará un evento de alarma en la zona de nuevo, cuando sea detectada.

> El valor 'No repetir' significa que la alarma reiterada en la zona puede ser transmitida sólo después de que a través de la zona se transmita el reseteo de la alarma anterior.

El parámetro 'Intervalo de repetición de alarmas' no se extiende sobre las alarmas que se forman al accionarse el tamper del equipo. Los eventos de alteración o recuperación del tamper siempre se crean basándose en el cambio del estado del tamper.

#### Intervalo de repetición de alarmas de incendio

El parámetro 'Intervalo de repetición de alarmas de incendio' establece el intervalo con el cual el equipo creará alarmas similares por las zonas de tipo 'De incendio' y las transmitirá a la consola de seguridad. Se consideran similares las alarmas que surgieron en la misma zona o fueron transmitidas por el mismo avisador inalámbrico.

El intervalo de repetición de alarmas de incendio por una parte sirve para reducir la cantidad de eventos similares que serán transmitidos a la consola de seguridad, y por otra parte - para no permitir la situación bajo la cual el personal de la consola de seguridad perderá de vista el hecho de que el dispositivo en el objeto se encuentra en estado generalizado 'Incendio'; si el  [reseteo automático del estado generalizado 'Incendio'](#config-fire-alarm-auto-reset) está prohibido, para su reseteo hay que teclear el código en el teclado.

El valor para el parámetro 'Intervalo de repetición de alarmas de incendio' se usa de la siguiente forma:

* al detectar una alarma de incendio en la zona, se creará el evento 'Incendio', el dispositivo pasará al estado 'Incendio' y empezará la cuenta del intervalo establecido;
* al finalizar la cuenta del intervalo establecido, el evento 'Incendio' se creará de forma reiterada en todas las zonas, por las cuales fue creado durante la cuenta del intervalo. Después de esto la cuenta del intervalo empezará de nuevo;
* al resetear el estado generalizado 'Incendio' la cuenta del intervalo será finalizada.

  
#### Intervalo de repetición de fallos

Mediante el parámetro 'Intervalo de repetición de fallos' se puede establecer el intervalo con el cual el dispositivo creará fallos *similares* por zonas y dispositivos inalámbricos conectados al equipo. Se consideran *similares* los fallos que surgieron en la misma zona por cable o fueron transmitidos por el mismo dispositivo inalámbrico. Con ello, a diferencia de los intervalos de repetición de alarmas de seguridad o alarmas de incendio, la cuenta del intervalo de repetición de fallos *finaliza*, si se detecta la recuperación del estado del fallo y se crea el evento correspondiente.

Para las zonas por cable son fallos sobre los cuales se extiende el 'Intervalo de repetición de fallos' los fallos físicos de la zona - ruptura y cortocircuito. Estos fallos se crean solo en el caso de que a la zona esté conectada una o dos resistencias terminales.

Si para la zona por cable se indica un tipo que supone el arme del sistema de seguridad, entonces los códigos de los eventos que se crean al detectar fallos/recuperaciones en tal zona, dependerán del estado (armado o desarmado) en el cual estaba la zona para el momento de la detección del fallo:

* los códigos **E331/R331** se crearán al detectar una ruptura/recuperación de la zona *desarmada*;
* los códigos **E141/R141** se crearán al detectar una ruptura/recuperación de la zona *armada*;
* los códigos **E332/R332** se crearán al detectar un cortocircuito/recuperación de la zona *desarmada*;
* los códigos **E142/R142** se crearán al detectar un cortocircuito/recuperación de la zona *armada*;


A pesar de que los códigos **E141** y **E142** se consideran como alarmas, sobre los eventos con estos códigos se extiende el intervalo de repetición de fallos y no alarmas.

La lista de fallos para los dispositivos inalámbricos, sobre los cuales se extiende el 'Intervalo de repetición de fallos' es la siguiente:

* pérdida de conexión;
* descarga de la batería principal;
* descarga de la batería de reserva (si la instalación de la batería de reserva se prevé por la construcción del equipo);
* fallo de la zona del sensor de inundación, conectado al avisador 'CN-Flood' (individual para cada zona), fallos del sensor de temperatura.

El valor del parámetro 'Intervalo de repetición de fallos' no se extiende sobre los siguientes eventos de fallos que se crean por el equipo:
* descarga de la batería de reserva, conectada al equipo. El evento sobre la descarga de la batería de reserva (código **E302**) se crea una vez y se repite sólo al activar el equipo;
* fallo de la batería de reserva conectada al equipo. El evento de fallo de la batería de reserva (código **E309**) se crea cada 12 horas, según los resultados de cada comprobación de la calidad de la batería de reserva;


#### Intervalo de cambio al canal principal

Mediante el parámetro 'Intervalo de cambio al canal principal' se puede establecer el intervalo dentro del cual el equipo intentará inicializar la conexión a la consola a través del canal IP que es principal. Qué canal de comunicación es principal depende de si al equipo está conectado el 'Adaptador Ethernet':

* si el 'Adaptador Ethernet' está conectado al equipo, el canal principal de comunicación es Ethernet;
* si el 'Adaptador Ethernet' no está conectado al equipo, el canal principal de comunicaciones es el canal GPRS en la SIM1.


Puede informarse con mayor detalle sobre las particularidades de la configuración de los canales IP, así como de las normas de cambio de canales de comunicación en el apartado de la descripción, dedicado a la [pestaña 'Security Center'](#config-sc).

Hay que destacar que en calidad de valor para el parámetro 'Intervalo de cambio al canal principal' se puede indicar el valor 'No cambiar'. En este caso el cambio forzado al canal principal de comunicación será desactivado. Tal posibilidad permite usar tarjetas SIM 'equivalentes' - si el equipo se conectó a través de GPRS en la SIM2, permanecerá en este canal hasta que el canal funcione.

#### Intervalo de transmisión de pruebas

Mediante el parámetro 'Intervalo de transmisión de pruebas' se puede establecer el intervalo con el cual el equipo generará un evento de prueba y lo enviará a través del canal de comunicación disponible en aquel momento. Es importante comprender que este intervalo siempre se cuenta del último evento que fue transmitido por el equipo. Si al finalizar el intervalo no se producen eventos para la transmisión, se formará y se transmitirá un evento de prueba. Si para este parámetro se indica el valor 'No transmitir', el equipo no formará el evento de prueba (código **E602**).

#### Intervalo de control de transmisión de eventos

Mediante el parámetro 'Intervalo de control de transmisión de eventos' se establece el intervalo durante el cual el sistema de auditoría espera el envío del evento. El *sistema de auditoría* es un mecanismo de software que controla el hecho de transmisión de eventos a la consola de seguridad.

Si para el parámetro 'Intervalo de control de transmisión de eventos' se establece cualquier valor numérico, el dispositivo funcionará de la siguiente forma:

* Si el sistema de auditoría registra una ausencia de transmisión de eventos en el intervalo de tiempo indicado en el parámetro, primero se realiza el cambio del canal de comunicación que se usa por el equipo actualmente;
* En el momento cuando el sistema de auditoría realizó el cambio del canal de comunicación se forma el evento con el código E754. Como argumento para el evento con el código E754 sirve el tipo de canal de comunicación que dejó de transmitir eventos (1 - Ethernet o GSM, 3 - radio). El valor del argumento se transmite al campo destinado al número de zona o usuario.
* Si el cambio del canal no ayudó y los eventos siguen sin enviarse, a través del intervalo de control de transmisión de eventos el sistema de auditoría realiza el reinicio del equipo.
* Después del reinicio se formarán dos eventos. Código del primer evento - R305, este evento registra el hecho de reinicio del equipo. El código del segundo evento - R754, este evento significa que el reinicio tuvo lugar por orden del sistema de auditoría.


El valor predeterminado para este parámetro es de 7 minutos. Si hace falta el valor se puede aumentar. Si para este parámetro se establece el valor 'No controlar', el sistema de auditoría será desactivado.

#### Intervalos de control de comunicación con dispositivos inalámbricos

'El intervalo de control de comunicación con dispositivos inalámbricos' es el intervalo, en el transcurso del cual del dispositivo inalámbrico debe recibirse aunque sea un envío. Si en el transcurso de este intervalo el dispositivo inalámbrico no envía nada, se creará el mensaje de pérdida de conexión. Los dispositivos inalámbricos mandan envíos de prueba una vez cada 30 segundos. Si para este parámetro se indica el valor 'No controlar', el dispositivo no controlará los envíos de prueba de los dispositivos inalámbricos. 