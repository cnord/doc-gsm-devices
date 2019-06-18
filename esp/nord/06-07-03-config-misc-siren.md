### Sirena {#config-misc-siren}

\imgcapt{img/06-07-config-nord-02.png}{Pestaña "Varios", apartado "Sirena"}

#### Sirena conectada

Si la sirena está conectada a su correspondiente salida "Sirena", hay que marcar la correspondiente casilla. Con ello, se activará el control de líneas de conexión con la sirena que permite detectar la ruptura y el cortocircuito de la línea, en caso de sirena desactivada y en caso de sirena activada. Si se detecta cualquiera de los fallos especificados se crea un evento con el código **E321** - *Fallo de la sirena*, que se transmite a la consola de seguridad.

Aparte de conectar en la salida de la sirena, la sirena se puede conectar a cualquiera de los siete colectores abiertos, con ello no hay que marcar la casilla "Sirena conectada". Es importante destacar que el equipo no controla el estado de la línea, si la sirena está conectada a un colector abierto.

La conexión de la sirena a un colector abierto se realiza de la siguiente forma:

* El cable "Positivo" del avisador puede ser conectado a cualquier salida positiva del panel de control, por ejemplo, la salida para la alimentación del teclado o las zonas.
* El cable "Negativo" del avisador debe ser conectado a uno de los siete colectores abiertos: FIRE, DEFECT, LED_G, LED_Y, FIRE2, DEFECT2, DISABL.
* Después de conectar el avisador, hay que configurar la salida mediante las normas del sistema automático. Puede informarse con mayor detalle sobre las normas en el [apartado Sistema automático](#config-automation)

#### Intervalo de sonido de la sirena

El parámetro "Intervalo de sonido de la sirena" es responsable por la duración del sonido de la sirena, independientemente de la forma de su conexión. Al transcurrir el tiempo indicado en el valor del parámetro, la sirena dejará de sonar.

#### Intervalo de activación reiterada de la sirena

En el valor del parámetro "Intervalo de activación reiterada de la sirena", se indica el tiempo, dentro del cual la sirena empezará a sonar de nuevo si no tuvo lugar el reseteo de la alarma.
