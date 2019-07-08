
## Llave TM

\imgcapt{img/tm-with-key.png}{Dibujo 1: Lector - TM y llave - TM}

El equipo dispone de una interfaz integrada para la conexión de lectores de llaves TM. Aparte de esto, en el dispositivo se prevé la posibilidad de conectar un indicador LED que se ubica directamente en el cuerpo de algunas marcas de lectores de llaves TM.

El indicador LED ubicado en el cuerpo del lector TM, sirve para la indicación de la lectura de la llave TM, el arme y desarme del sistema de seguridad, así como para la indicación del estado actual del equipo.

Mediante una llave TM se puede armar el sistema de seguridad o desarmar el sistema de seguridad de una partición. Si un usuario necesita tener la posibilidad de armar o desarmar varias particiones al mismo tiempo, hay que configurar las correspondientes reglas en el apartado 'Sistema automático'. 

### Indicación de lectura

Si la operación de lectura de la llave finaliza con éxito, el equipo lo indica, independientemente de si la llave fue encontrada en la memoria del equipo o no. En otras palabras, en caso de que se produzca una lectura con éxito el equipo simplemente confirma que al lector fue acercada una llave y esta llave fue leída.

Indicación de una lectura con éxito de la llave TM: LED 'parpadeante' (se enciende por 0,1 seg, permanece encendido, después se apaga por 0,1 seg ) durante 1 segundo.

### Indicación de errores

Al realizar la lectura de la llave, pueden producirse los siguientes errores:

* llave no encontrada en la memoria del equipo;
* denegación de arme.

Indicación de error: LED 'parpadeante' (se enciende por 0,5 seg, después se apaga por 0,5 seg) durante 3 segundos.  

### Indicación de desarme

Si ha sido leída la llave, mediante la cual se puede cambiar el estado de la partición y está armado el sistema de seguridad de esa partición, se desarma el sistema de seguridad de la partición.

La indicación de desarme se realiza después de que se haya realizado la indicación de lectura.

Indicación de desarme: el LED se enciende por 5 segundos y se apaga.

Después de que se realice la indicación de desarme del sistema de seguridad, se enciende la indicación del modo de guardia.

### Indicación de arme

Si se lee la llave con la cual se puede cambiar el estado de la partición, en caso de que en la partición no haya zonas con retraso de salida, se realiza el arme del sistema de seguridad de la partición. Si en la partición hay zonas con retraso de salida, empieza la cuenta del intervalo de retraso; el arme del sistema de seguridad se realiza al finalizar el retraso de salida.

La indicación de arme del sistema de seguridad depende de la cantidad de particiones configuradas en el equipo.

**Una partición**

Si en el equipo sólo está configurada una partición, después de su arme el LED se enciende y permanece encendido constantemente: se enciende la indicación del modo de guardia con la única partición armada.

**Varias particiones**

Si en el equipo están configuradas varias particiones, la indicación después del arme del sistema de seguridad de la partición actual depende de si quedan particiones desarmadas o no.

Si todas las particiones están armadas, el LED se enciende y permanece encendido de forma continua: se apaga la indicación del modo de guardia con varias particiones, todas las particiones están armadas.

Si existe aunque sea una partición que no está armada, el LED se enciende y permanece encendido durante 20 segundos. A continuación se enciende la indicación del modo de guardia con varias particiones, parte de las cuales está desarmada.

**Denegación del arme**

La 'denegación del arme' - es la imposibilidad de armar el sistema de seguridad del objeto, si la alarma de seguridad en el objeto no funciona correctamente, o si el arme del sistema de seguridad está prohibido por el impago de los servicios de seguridad.

Están previstos los siguientes motivos de denegación del arme:

* fallo de una o varias zonas;
* alarma en una o varias zonas;
* ausencia de comunicación con el programa de la consola por el canal IP;
* ausencia de 220 V en el objeto;
* impago de los servicios de seguridad;
* está abierto el cuerpo del equipo.


### Indicación de modo de guardia

Durante el tiempo de la indicación de lectura, error de arme/desarme, arme y desarme, la indicación del modo de guardia se interrumpe.

La indicación del modo de guardia depende de la cantidad de particiones configuradas en el equipo.

**Una partición**

Si en el equipo sólo está configurada una partición, el LED indica el estado de la partición, la existencia de alarma durante el período de seguridad y el fallo de las zonas;

* LED encendido de forma ininterrumpida, si la partición está armada;
* LED apagado, si la partición está desarmada;
* LED 'parpadeante' [ˆblink], si hay fallos en las zonas;
* LED 'parpadeante', si después de armar la partición se produjo una alarma y el sistema de seguridad de la partición no fue desarmado

> 'Parpadea' significa que el LED se enciende por 1 segundo, después de lo cual se apaga por 1 segundo, después de lo cual, de nuevo se enciende por 1 segundo, etc.

**Varias particiones**

Si en el equipo están configuradas parias particiones, se indica sólo el estado del arme de todo el dispositivo, presencia de alarma, cuando todo el equipo estaba armado, así como los fallos de las zonas.

* LED encendido de forma ininterrumpida, si todas las particiones del equipo están armadas;
* LED apagado, si aunque sea una partición está desarmada;
* LED 'parpadeante', si hay fallos en las zonas;
* LED 'parpadeante', si después de armar el sistema de seguridad de todo el equipo se produjo una alarma y la partición donde se produjo la alarma no fue desarmada.