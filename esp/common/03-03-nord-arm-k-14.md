## Teclado K14-LED

\imgcapt{img/k14.png}{Dibujo 2: Teclado K14-LED}

Mediante el teclado K14-LED el usuario puede realizar las siguientes tareas:

•	conocer el estado de la partición (armada / desarmada);
•	armar la partición o desarmar la partición;
•	informarse de un retraso de entrada o salida que acaba de empezar o continua;
•	conocer el estado de seguridad de todo el equipo;

En el teclado K14-LED se ubica un LED verde y otro rojo:

•	El LED rojo permanece encendido constantemente si todas las particiones del equipo están armadas.
•	Al desarmar la partición se apaga el LED rojo y se enciende el verde.
•	Los LEDs rojo y verde parpadean al mismo tiempo si se produjo un error. Por ejemplo, al introducir un código incorrecto del usuario o en caso de denegación del arme del sistema de seguridad.

### Recepción del estado del objeto

Para recibir la información sobre el estado del objeto hay que pulsar el botón **i**:

* si en el equipo están configuradas las particiones y todas las particiones están armadas, el teclado reproducirá: "Sistema de seguridad del objeto armado" y encenderá el LED rojo.
* si en el equipo están configuradas las particiones y todas las particiones están desarmadas, el teclado reproducirá: "Sistema de seguridad del objeto desarmado" y encenderá el LED verde.
* si en el equipo están configuradas las particiones y algunas de ellas están armadas, y otras desarmadas, el teclado muestra la indicación de error.
* si en el equipo no están configuradas las particiones, el teclado muestra la indicación de error.

### Recepción del estado de la partición

Para recibir la información sobre el estado de la partición hay que pulsar el botón del número de la partición y el botón **i**:

* si la partición existe, el teclado reproduce su estado y enciende el correspondientes LED.
* si la partición no existe, el teclado muestra la indicación de error.

### Arme y desarme

En el equipo está realizada la posibilidad de arme y desarme del sistema de seguridad de varias particiones con un código de usuario. El ajuste de particiones que pueden ser armadas o desarmadas con un código en concreto, se realiza al realizar la configuración del equipo.

#### Arme del sistema de seguridad

Para armar la partición hay que pulsar  "casita" e introducir el código del usuario.

* si el código es correcto, el sistema de seguridad del objeto (partición) será armado, el teclado confirmará el arme mediante la activación del LED rojo. O se activará la cuenta del intervalo de retraso de salida, que va acompañada por una indicación acústica y LED.
* si el código es incorrecto o al usuario al que le pertenece ese código, le corresponde más de una partición, el teclado mostrará un error.
* si el arme del sistema de seguridad no es posible, el teclado mostrará un error.

\imgcapt{img/arm.png}{}

Si al código de usuario están asignadas varias particiones, primero el usuario debe pulsar el botón "casita", elegir el apartado, cuyo estado desea cambiar y a continuación teclear el código.

\imgcapt{img/arm_part.png}{Пример взятия с выбором раздел}

#### Denegación del arme del sistema de seguridad

La "Denegación del arme" - es la imposibilidad de armar el sistema de seguridad del objeto, si la alarma de seguridad en el objeto no funciona correctamente, o si el arme del sistema de seguridad está prohibido por el impago de los servicios de seguridad.

Están previstos los siguientes motivos de denegación del arme:

* fallo de una o varias zonas;
* alarma en una o varias zonas;
* ausencia de comunicación con el programa de la consola por el canal IP;
* ausencia de 220 V en el objeto;
* impago de los servicios de seguridad;
* está abierto el cuerpo del equipo.


#### Desarme del sistema de seguridad

Si el usuario puede controlar sólo una partición, para desarmar el sistema de seguridad hay que introducir el código del usuario.

* si el código es correcto, el sistema de seguridad del objeto (partición) será desarmado. El teclado confirmará el desarme mediante la activación del LED verde.
* si el código es incorrecto o el usuario al que le pertenece ese código, puede controlar varias particiones, el teclado mostrará un error.


\imgcapt{img/disarm.png}{}

Si el usuario puede controlar varias particiones, para desarmar el sistema de seguridad hay que teclear el número de la partición y a continuación # e introducir el código del usuario.

* Si el código es correcto, el sistema de seguridad de la partición será desarmado. El teclado confirmará el desarme mediante la activación del LED verde.
* Si se vuelve a desarmar el sistema de seguridad de la misma partición, el teclado mostrará su estado: se encenderá el LED verde.

\imgcapt{img/disarm_part.png}{Ejemplo de desarme con selección de partición}

La cuenta del intervalo de retraso de entrada o intervalo de retraso de salida se indica mediante un sonido intermitente que se reproduce durante todo el intervalo de retraso. La indicación acústica de retraso de entrada o salida se desconecta al pulsar cualquier botón del teclado.

### Indicación acústica y por voz

El teclado dispone de un altavoz integrado, a través del cual se realiza la indicación por voz e indicación por el zumbador. La pulsación de teclas en el teclado va acompañada con una señal acústica que confirma la pulsación.

Con voz se indica:

* Arme del sistema de seguridad y desarme del sistema de seguridad de particiones y el objeto en general;
* Denegación de arme del sistema de seguridad;
* Advertencias sobre saldo insuficiente al armar el sistema de seguridad;
* Estado de la partición o del objeto en general (al pulsar las tecla i).


En el teclado se está prevista la función de ajuste del volumen del altavoz integrado. Ajuste de cinco niveles - empezando por el estado "desactivado" hasta los niveles de volumen del primero hasta el cuarto. La selección del nivel de sonido se realiza mediante la combinación de las teclas “#” y “9”.

### Botón de emergencia

Si en la configuración del equipo está permitido el uso del teclado en calidad de botón de emergencia, para la activación hay que pulsar y mantener pulsados durante 3 segundos los botones de las "casitas", la activación de los LEDs verde y rojo durante 1 segundo acompañada con sonido confirma que fue pulsando el botón de emergencia.

Si en la configuración del equipo está prohibido el uso del teclado en calidad de botón de emergencia, el teclado mostrará un error. 