## Teclado inalámbrico CN-K

\imgcapt{img/k14.png}{Teclado CN-K}
El equipo se puede controlar o informarse sobre su estado a través del teclado inalámbrico 'CN-K'. El teclado se conecta al equipo 'Nord GSM' a través del expansor 'CN-Rasio'. Para añadir el teclado a la configuración del equipo hay que realizar las siguientes acciones:

* Quitar la tapa del teclado.
* Conectar la alimentación - la alimentación del teclado se realiza a través de dos baterías de litio de tipo CR123A (principal y de reserva). Para cambiar las baterías hay que abrir la tapa de la sección de baterías, instalar primero la batería de reserva y a continuación la principal.
* En el configurador del equipo ir a la pestaña 'Dispositivos inalámbricos' y pulsar el botón 'Añadir dispositivo inalámbrico'.
* Cambiar el teclado al modo 'Unión'. Para ello hay que cruzar los contactos 'Reseteo', ubicados en la placa del dispositivo. Mediante destellos del LED verde, 'CN-K' confirmará el cambio al modo de 'Unión'.

(Más información en el apartado 5.3. 'Dispositivos inalámbricos')


\imgcapt{img/03-05-cn-k.png}{Sección de baterías del teclado CN-K}
Al equipo se puede conectar un máximo de cuatro teclados inalámbricos, teniendo en cuenta que el equipo puede funcionar con todos los teclados al mismo tiempo.

### Arme y desarme

En el equipo está realizada la posibilidad de arme y desarme del sistema de seguridad de varias particiones con un código de usuario. El ajuste de particiones que pueden ser armadas o desarmadas con un código en concreto, se realiza al realizar la configuración del equipo.

**Arme del sistema de seguridad**

Para armar la partición hay que pulsar 'casita' e introducir el código del usuario.

* si el código es correcto, el sistema de seguridad del objeto (partición) será armado, el teclado confirmará el arme mediante la activación del LED rojo. O se activará la cuenta del intervalo de retraso de salida que va acompañada por una indicación acústica o LED.
* si el código es incorrecto o al usuario al que le pertenece ese código, le corresponde más de una partición, el teclado mostrará un error.
* si el arme del sistema de seguridad no es posible, el teclado mostrará un error.

\imgcapt{img/arm.png}{}

Si al código de usuario están asignadas varias particiones, primero el usuario debe pulsar el botón 'casita', elegir el apartado, cuyo estado desea cambiar y a continuación teclear el código.

\imgcapt{img/arm_part.png}{Ejemplo de arme de la partición №1 con el código 1234}

**Denegación del arme del sistema de seguridad**

La 'Denegación del arme' - es la imposibilidad de armar el sistema de seguridad del objeto, si la alarma de seguridad en el objeto no funciona correctamente, o si el arme del sistema de seguridad está prohibido por el impago de los servicios de seguridad.

Están previstos los siguientes motivos de denegación del arme:

* fallo de una o varias zonas;
* alarma en una o varias zonas;
* ausencia de comunicación con el programa de la consola por el canal IP;
* ausencia de 220 V en el objeto;
* impago de los servicios de seguridad;
* está abierto el cuerpo del equipo.


**Desarme del sistema de seguridad**

Si el usuario puede controlar sólo una partición, para desarmar el sistema de seguridad hay que introducir el código del usuario.


* si el código es correcto, el sistema de seguridad del objeto (partición) será desarmado. El teclado confirmará el desarme mediante la activación del LED verde.
* si el código es incorrecto o el usuario al que le pertenece ese código puede controlar varias particiones, el teclado mostrará un error.


\imgcapt{img/disarm.png}{}

Si el usuario puede controlar varias particiones, para desarmar el sistema de seguridad hay que teclear el número de la partición y a continuación # e introducir el código del usuario.

* Si el código es correcto, el sistema de seguridad de la partición será desarmado. El teclado confirmará el desarme mediante la activación del LED verde.
* Si se vuelve a desarmar el sistema de seguridad de la misma partición, el teclado mostrará su estado: se encenderá el LED verde.


\imgcapt{img/disarm_part.png}{Ejemplo de desarme de la partición №1 con el código 1234}

La cuenta del intervalo de retraso de entrada o intervalo de retraso de salida se indica mediante un sonido intermitente que se reproduce durante todo el intervalo de retraso. La indicación acústica de retraso de entrada o salida se desconecta al pulsar cualquier botón del teclado.

### Recepción del estado

En el teclado 'CN-K' hay un LED verde y uno rojo: 

* El LED rojo se enciende al armar la partición. 
* Al desarmar la partición se enciende el LED verde. 
* Los LEDs rojo y verde parpadean simultáneamente si se produjo un error. Por ejemplo, al introducir un código incorrecto del usuario o en caso de denegación del arme.

**Recepción del estado del objeto**

Para recibir la información sobre el estado del objeto hay que pulsar el botón **i**:

* si todas las particiones del equipo están desarmadas, se encenderá el LED verde;
* si una parte de las particiones está armada y una parte está desarmada, el teclado mostrará un error, ya que hay que indicar expresamente el número de la partición cuyo estado hay que recibir;
* si en la configuración del equipo no hay ninguna partición, el equipo mostrará un error;

**Recepción del estado de la partición**

Para recibir la información sobre el estado de la partición hay que pulsar el botón del número de la partición y el botón **i**:

* si la partición está armada, se encenderá el LED rojo;
* si la partición está desarmada, se encenderá el LED verde;
* si en la configuración del equipo no existe una partición con tal número, se indicará un error.


### Botón de emergencia

Si en la configuración del equipo está permitido el uso del teclado en calidad de botón de emergencia, para la activación hay que pulsar y mantener pulsados durante 3 segundos los botones de las 'casitas'. La activación de los LEDs verde y rojo durante 1 segundo acompañada con sonido confirma que fue pulsando el botón de emergencia.

Si en la configuración del equipo está prohibido el uso del teclado en calidad de botón de emergencia, el teclado mostrará un error.

### Desactivación de la iluminación y el sonido

En el teclado 'CN-K' existe la posibilidad de activación y desactivación del sonido y la iluminación.

Para activar o desactivar el sonido de confirmación de pulsación de las teclas, al mismo tiempo hay que pulsar y mantener pulsadas las teclas '#' y '9'. Para la activación y la desactivación de la iluminación, al mismo tiempo hay que pulsar y mantener pulsadas las teclas '#' y '0'.

## Llavero inalámbrico

El llavero inalámbrico así como la llave - TM se vinculan al usuario. Mediante el llavero se puede armar o desarmar el sistema de seguridad de una partición. Si el usuario desea tener la posibilidad de armar o desarmar varias particiones al mismo tiempo, hay que configurar las correspondientes reglas en el apartado 'Sistema automático'.

El llavero dispone de un botón de alarma de emergencia, que una vez pulsado hará que el equipo cree un evento de emergencia.

