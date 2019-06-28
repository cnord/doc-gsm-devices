\pagebreak

## Radio {#config-radio}

"Nord GSM" puede transmitir eventos a la consola de seguridad no sólo a través de los canales GSM y Ethernet, sino también por el canal de radio. La transmisión por radio puede realizarse en modo duplicado, cuando todos los eventos siempre se envían por radio, tanto en modo de reserva, cuando los eventos por radio se transmiten si no hay comunicación IP con la consola de seguridad.

> La transmisión por radio se realiza *sólo* en el protocolo «EPAF», el protocolo «PAF» no se soporta.

### Configuración del canal de radio

\imgcapt{img/06-09-config-nord-01.png}{Pestaña «Radio», apartado «Configuración del canal de radio»}

En el apartado "Configuración del canal de radio se asignan los parámetros que usará el equipo al transmitir eventos por radio.

Mediante el valor para el parámetro "Modo de uso" se puede especificar el modo en el cual se realiza la transmisión por radio:

* "Transmisor no conectado" - no se realizará la transmisión por radio;
* "Transmitir si no hay comunicación IP" - la transmisión por radio se realizará sólo si el equipo no tiene conexión a la consola de seguridad a través de los canales de comunicación IP (Ethernet o GPRS);
* "Trasmitir siempre" - todos los eventos creados por el equipo siempre se transmitirán por radio.

El parámetro "Formato de la estación" asigna la clave que se usa al realizar la codificación de los envíos al enviar por radio. El formato para cada estación «CMS-420» / «Sentinel» se asigna por el fabricante al suministrar la estación y está indicado en su documentación adjunta.

Debido a que durante la transmisión por radio no hay confirmaciones de recepción de eventos por parte de la estación, el equipo del objeto transmite el mismo evento muchas veces. La información codificada para la transmisión por radio que corresponde al evento se llama secuencia. Varias secuencias que se transmiten en serie, sin pausa entre ellas, se llaman paquete. Varios paquetes que se envían a la estación con pausa entre ellos se llaman envío. De esta forma, al transmitir por radio, cada evento se transmitirá en forma de un envío, los parámetros para crear el cual se pueden especificar.

Para controlar el funcionamiento del canal de transmisión por radio sirve el parámetro "Intervalo de transmisión de pruebas". Mediante este parámetro se puede asignar el intervalo máximo, al transcurrir el cual, del equipo debe recibirse cualquier evento por radio. Este intervalo siempre se cuenta a partir del último evento que fue transmitido por radio. Si al transcurrir el intervalo no habrá eventos que hay que transmitir por radio, se creará y se transmitirá un evento de prueba.

> Hay que entender que los eventos de prueba con intervalo establecido se transmiten independientemente de la existencia de comunicación IP con la consola de seguridad: incluso si el canal de transmisión por radio se usa como de reserva y la transmisión de eventos por radio se realiza sólo si no hay comunicación IP con la consola de seguridad, los eventos de prueba se transmitirán con el intervalo especificado.

### Números de particiones de los objetos

\imgcapt{img/06-09-config-nord-02.png}{Pestaña «Radio», apartado «Números de particiones de los objetos»}

Debido a que el protocolo de transmisión por radio no permite usar los números de las particiones, para cada partición del panel de control hay que especificar un número de objeto que se usará al transmitir por radio.

Recomendamos insistentemente especificar tales números de particiones de los objetos, que no coincidan ni con el número del objeto que se asigna en la pestaña "Security Center", ni con los números de objetos de otras particiones. Esto hace falta para que los eventos creados por la partición puedan diferenciarse de los eventos de servicio, creados por el equipo, y aparte de esto, de los eventos creados por otra partición.

### Equipo en cuerpo metálico

Si se prevé que el panel de control funcionará por radio, se suministrará en cuerpo metálico. 
Por una parte, el cuerpo metálico tiene grandes dimensiones en comparación con el cuerpo de plástico. Pero por otra parte, estas dimensiones le ofrecen una serie de ventajas, inclusive al usar el canal de radio:

* hay sitio para la instalación del transmisor de radio;
* el cuerpo mismo sirve de contrapeso para la antena de látigo;
* se prevé la posibilidad de instalar un expansor por cable y un expansor inalámbrico «CN-RADIO». De esta forma, al equipo "Nord GSM" en cuerpo metálico se pueden conectar hasta 16 zonas por cable y hasta 31 dispositivo inalámbrico;
* se puede instalar una batería de mayor capacidad - hasta 7.2 A * h.

