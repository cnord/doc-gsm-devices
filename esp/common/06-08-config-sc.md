\pagebreak

## Security Center {#config-sc}

En la pestaña "Security Center" se pueden indicar los parámetros que usará el equipo al transmitir eventos a la consola de seguridad a través de los canales GSM y Ethernet.

### Identificación del equipo

\imgcapt{img/06-08-config-common-01.png}{Pestaña «Security center», apartado «Identificación»}

En el apartado "Identificación" se puede especificar el número del objeto que se usará durante la transmisión de eventos desde el equipo.

> Debido a que la transmisión de eventos desde el equipo en el software del "Security Center" se realiza en el protocolo que es un equivalente informático al protocolo Ademco ContactID, cada evento, si es posible, contiene la información del número de la partición en la cual tuvo lugar, así como del número de la zona que generó la creación del evento, o el número del usuario que realizó el arme o desarme de la partición. De esta forma, al transmitir a través de GSM o Ethernet un numero del objeto es suficiente para trasmitir cualesquiera eventos desde el equipo sin pérdida de sus características informativas.

En el apartado "Identificación", en el campo "Identificador del dispositivo" se muestra un número de serie único de ocho dígitos asignado al dispositivo durante la fabricación. Este número de serie puede transmitirse a la consola de seguridad y servir en calidad de alternativa al número del objeto al identificar el equipo. Para activar esta posibilidad sirve el parámetro "Trasmitir el identificador del dispositivo al programa de la consola". En el software del "Security Center" la posibilidad de usar el número de serie del equipo en vez del numero del objeto no está realizada: si la transmisión del número de serie al programa de la consola está activada, el número de serie simplemente se mostrará en la tarjeta del objeto en la pestaña "Equipos".

> Si en calidad del software de la consola se usa el "Security Center" de la versión 4, no se puede trasmitir el número de serie al programa de la consola: el equipo no podrá conectarse al "Security Center".

Para que los eventos desde el equipo se procesen correctamente por el software del "Security Center", deben cumplirse las siguientes condiciones:

* el numero del objeto, asignado al configurar el equipo, debe coincidir con el numero del objeto, creado para el equipo en el software del "Security Center";
* en el módulo "Administrador de objetos", en el apartado "Equipos" para este objeto debe indicarse el valor "C-Nord GSM (CML)";
* antes de la primera conexión del equipo al software del "Security Center" hay que asegurarse que el valor en el campo "Identificador" en la pestaña "Equipos" no está asignado.


\imgcapt{img/06-08-config-common-02.png}{Módulo «Administrador de objetos», pestaña «Equipos»}

### Parámetros de transmisión por GPRS

\imgcapt{img/06-08-config-common-03.png}{Pestaña «Security Center», apartado «Transmisión por TCP/IP (GPRS)»}

En el apartado "Transmisión por TCP/IP (GPRS)" se pueden asignar hasta dos pares "dirección:puerto", que se usarán por el equipo al conectarse a la consola de seguridad a través de los canales GSM/GPRS.

> En calidad de valores a los campos "Dirección 1" y "Dirección 2" se puede indicar tanto la dirección IP, como el nombre DNS.

Al inicializar la conexión a través de GPRS, el equipo primero intenta conectarse al servidor con los parámetros "Dirección1:Puerto 1". Si no se consigue establecer la conexión, se realizará el intento de conectar al servidor con los parámetros "Dirección 2:Puerto 2". Con ello ambos pares "dirección:puerto" se perciben por el equipo como equivalentes: la diferencia entre ellos sólo consiste en qué par se utilizará para la inicialización de la conexión primero. Si el equipo se conecta a la consola de seguridad usando los pares "Dirección 2:Puerto 2", esa conexión no se considerará conectada a través del canal de reserva y sólo será cerrada si se pierde la conexión con la consola de seguridad con el uso de esta conexión..

Ambos pares "dirección:puerto" son válidos para ambas tarjetas SIM, instaladas en el equipo: independientemente de cuál de las tarjetas SIM actualmente está activa, el equipo primero realizará el intento de conexión a la consola de seguridad con los parámetros "Dirección 1:Puerto 1" y sólo si este intento falla - intentará conectar con los parámetros "Dirección 2:Puerto 2".

En caso de que en la consola de seguridad sólo haya una dirección para la conexión de equipos a través de TCP/IP, al configurar el equipo los valores para los parámetros "Dirección 2:Puerto 2" hay que dejarlos en blanco.

Si al equipo no está conectado el módulo opcional "Adaptador Ethernet", el canal GSM/GPRS en la SIM1 se considera principal para el equipo.

**Recepción de eventos en el "Security Center"**

Para recibir eventos del equipo a través de los canales TCP/IP (GSM/GPRS y Ethernet) en el software del "Security Center" hay que usar la fuente de eventos "C-Nord GSM (CML)". Esta fuente de eventos se puede añadir o modificar sus parámetros en el módulo "Administrador de eventos".

Para abrir la ventana de configuración del servicio de las fuentes de eventos hay que seleccionar el punto "Fuentes de eventos (servicios)..." en el menú contextual que aparecerá al pulsar el botón derecho del ratón sobre el icono del módulo en la parte del sistema del panel de tareas.

\imgcapt{img/06-08-config-common-04.png}{Menú contextual del módulo «Administrador de eventos»}

Para añadir la fuente de eventos de «C-Nord GSM (CML)» al servicio de fuentes de eventos, hay que pulsar el botón "Añadir" y seleccionar el punto, fuente correspondiente, en el menú que aparezca.

\imgcapt{img/06-08-config-common-05.png}{Menú da la ventana de configuración del servicio de fuentes de eventos}

\imgcapt{img/06-08-config-common-06.png}{Ventana de configuración de la fuente de eventos «C-Nord GSM (CML)»}

Puede leer con más detalle sobre las asignaciones de los parámetros de la fuente de eventos «C.Nord GSM (CML)» en la documentación del software del "Security Center".

**¿Dirección IP o nombre DNS?**

En calidad de dirección del servidor se recomienda especificar el nombre DNS y no la dirección IP, por el siguiente motivo. La dirección IP dedicada, como norma, le pertenece concretamente al operador de comunicación que proporciona el acceso a Internet y no puede ser pasada a la conexión, proporcionada por otro operador de comunicación. Lo que respecta al nombre DNS, este le pertenece a la organización que lo registró, por ejemplo a la empresa de seguridad. Aparte de esto, la correspondencia del nombre DNS y la dirección IP también la asigna la empresa de seguridad. 

¿Qué pasará, si por algún motivo se deberá rescindir el contrato con el operador de comunicación que le proporciona a la empresa de seguridad el acceso a Internet? Si en calidad de dirección para la conexión a la consola de seguridad está indicado el nombre DNS, será suficiente con cambiar el registro que asigna la correspondencia del nombre DNS y la dirección IP. En el caso de que esté indicada la dirección IP, habrá que dirigirse a cada objeto para cambiar el valor de la dirección.

Partiendo de lo especificado *recomendamos insistentemente* usar precisamente el nombre DNS y no la dirección IP.

### Parámetros de transmisión por Ethernet

\imgcapt{img/06-08-config-common-07.png}{Pestaña «Security Center», apartado «Transmisión por TCP/IP (Ethernet)»}

En el apartado "Transmisión por TCP/IP (Ethernet)", al igual que en el anterior apartado se pueden asignar dos pares "dirección:puerto", que se usarán por el dispositivo al conectarse a la consola de seguridad a través del canal Ethernet. Todos los comentarios hechos en relación a los pares "dirección:puerto" en la descripción del apartado "Transmisión por TCP/IP (GPRS)" se extienden también sobre los parámetros en el apartado "Transmisión por TCP/IP (Ethernet)".

> En el caso general los valores de los parámetros "dirección:puerto" deben ser similares para los apartados "Transmisión por TCP/IP (GPRS)» y «Transmisión por TCP/IP (Ethernet)». Sin embargo, en algunos casos estos valores pueden ser diferentes. Por ejemplo, si para el canal GSM/GPRS se usa una conexión VPN protegida, proporcionada por el operador de comunicación móvil, las direcciones de conexión a través de GSM/GPRS y Ethernet pueden ser diferentes, ya que la conexión a través de Ethernet se realizará a través de una red pública. Pero incluso en este caso se puede organizar la conexión a través del canal GSM/GPRS de una forma que en calidad de dirección de la consola se use el nombre DNS y no la dirección IP.

Si al equipo está conectado el módulo opcional "Adaptador Ethernet", entonces el canal Ethernet se considera *principal* para el equipo.

El apartado "Transmisión por TCP/IP (Ethernet)" se muestra en el configurador sólo si al equipo está conectado el módulo opcional "Adaptador Ethernet".

### Parámetros de transmisión en el canal CSD GSM

\imgcapt{img/06-08-config-common-08.png}{Pestaña «Security Center», apartado «Transmisión en el canal CSD GSM»}

En el apartado "Transmisión en el canal CSD GSM" se pueden especificar los números de teléfonos que se usarán para llamar a la consola de seguridad al transmitir eventos en el canal CSD GSM.

A diferencia de los canales GSM/GPRS y Ethernet, los números de teléfonos para la transmisión en el canal CSD se asignan de forma separada para cada SIM. Esto se debe a que el coste del servicio de transmisión por CSD dentro de la red del operador de comunicación puede ser considerablemente menor. 

Al transmitir en el canal CSD el dispositivo primero realiza una llamada al primer número, indicado para la tarjeta SIM activa actualmente y si la transmisión del evento no tuvo éxito, a través del segundo. Si en la consola de seguridad sólo está instalado un modem para la recepción de eventos por el canal CSD, el segundo número de teléfono hay que dejarlo en blanco. 

El canal CSD se considera activo si está asignado aunque sea un número de teléfono. Si el equipo no debe usar el canal CSD para la transmisión de eventos, ambos números de teléfono deben estar en blanco.

**Recepción de eventos en el "Security Center"**

Para recibir eventos del equipo a través del canal CSD en el software del "Security Center" hay que usar la "Fuente de eventos por GSM". Esta fuente de eventos se puede añadir o modificar sus parámetros en el módulo "Administrador de eventos"

En calidad de equipo para la recepción de eventos por el canal CSD puede usarse cualquier modem GSM, cuyo sistema de comandos es compatible con el modem Siemens MC35.


### Parámetros de transmisión en el canal de voz GSM

\imgcapt{img/06-08-config-common-09.png}{Pestaña «Security Center», apartado «Transmisión en el canal de voz GSM»}

En el apartado "Transmisión en el canal de voz GSM" se pueden especificar los números de teléfonos que se usarán para llamar a la consola de seguridad al transmitir eventos en el canal de voz GSM. La transmisión en el canal de voz se realiza mediante las señales analógicas DTMF, en calidad de protocolo informático se usa Ademco Contact ID.

Los números de teléfonos para la transmisión en el canal de voz se asignan de forma separada para cada SIM, ya que la llamada por voz dentro de la red del operador de comunicación puede ser más barata.

Al transmitir en el canal de voz el equipo primero realiza una llamada al primer número, indicado para la tarjeta SIM activa actualmente y si la transmisión del evento no tuvo éxito, a través del segundo. Si en la consola de seguridad sólo hay un número para la recepción de llamadas por voz, el segundo número de teléfono hay que dejarlo en blanco. 

El canal GSM por voz se considera activo si está asignado aunque sea un número de teléfono. Si el equipo no debe usar el canal por voz para la transmisión de eventos, ambos números de teléfono deben estar en blanco.

**Recepción de eventos en el "Security Center"**

Para recibir eventos del equipo a en el canal GSM por voz hay que usar un equipo de consola especialmente destinado para tal fin. En calidad de ejemplo de tal equipo se puede poner el procesador de la estación central “Sentinel” de fabricación de la compañía “Pima Electronics” o los procesadores de la estación central “SG System III” / “SG System IV” de fabricación de la compañía “DSC”.

### Parámetros de transmisión por SMS

\imgcapt{img/06-08-config-common-10.png}{Pestaña «Security Center», apartado «Transmisión por SMS»}

En el apartado "Transmisión por SMS " se pueden especificar los números de teléfonos que se usarán para la transmisión de eventos a la consola de seguridad mediante el canal SMS.

Al transmitir por el canal SMS el equipo usa un protocolo que permite transmitir en un mensaje SMS hasta 5 eventos. Este protocolo sirve exclusivamente para la transmisión de información a la consola de seguridad y no puede ser usado para informar a los usuarios sobre los eventos en el objeto.

El número de teléfono para la transmisión por el canal SMS se especifica de forma separada para cada SIM, ya que el envío de SMS dentro de la red del operador de comunicación puede ser más barato.

El canal SMS se considera activo si tiene asignado un número de teléfono. Si el equipo no debe usar el canal SMS para la transmisión de eventos, el número de teléfono debe estar en blanco.


**Recepción de eventos en el "Security Center"**

Para recibir eventos del equipo en el canal SMS en el software del "Security Center" hay que usar la "Fuente de eventos por GSM". Esta fuente de eventos se puede añadir o modificar sus parámetros en el módulo "Administrador de eventos"

En calidad de equipo para la recepción de eventos por el canal SMS puede usarse cualquier modem GSM, cuyo sistema de comandos es compatible con el modem Siemens MC35.

### Cambio de canales de comunicación

Para determinar el siguiente canal de comunicación, si el canal IP actual no funciona, sirve la siguiente regla:

* si no hay eventos de transmisión, se realiza el cambio a otro canal IP. Por ejemplo, si no funciona el GPRS en la SIM1, el dispositivo pasará al GPRS en la SIM2 y viceversa;
* si el evento tiene lugar, se realiza el intento de su transmisión mediante el canal de reserva en aquella SIM que ahora está activa. Al finalizar el envío de eventos se reanuda el intento de conexión a través de los canales IP.


Si la transmisión en los canales de reserva de la SIM1 no se pudo realizar, se realizará el cambio a la SIM2 y la selección de canales allí. 

Si no hay eventos para la transmisión, el equipo irá seleccionando los canales IP hasta que realice la conexión, o hasta que no aparezca un evento para la transmisión. Es importante que el equipo puede diferenciar la situación "GPRS no funciona" de la situación "no hay conexión al "Security Center". En el primer caso se realiza el cambio a otro canal IP, en el segundo caso continúan los intentos de conectarse a la consola dentro de una sesión GPRS.

\imgcapt{img/06-08-config-common-11.png}{Esquema de cambio de canales de comunicación}

El orden de cambio de los canales de comunicación IP en caso de no haber eventos se muestra en el dibujo con líneas azules intermitentes. Con líneas negras continuas se muestra el esquema de cambio de todos los canales configurados en caso de haber eventos para la transmisión.

