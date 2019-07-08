\pagebreak

## Conexión de zonas por cable

Los cables de señal de las zonas se conectan a los bornes 'Z1'–'Z8'.

Los cables comunes de las zonas se conectan a los bornes 'GND'.

Los cables positivos de alimentación de las zonas de seguridad (12 V) se conectan a los bornes 'PWR'.

Los cables positivos de alimentación de las zonas de incendio (12 V) se conectan al borne 'SMOKE'.

### Zona normal cerrada y normal abierta

El estado normal de la zona se determina por los avisadores que están incluidos en la misma:

* si el estado normal para la zona está determinado como cerrado, en tal zona deben usarse avisadores que también disponen de contactos cerrados de su relé de salida en estado normal. En caso de alarma tales avisadores deben abrir los contactos del relé de salida;
* si el estado normal para la zona está determinado como abierto, en tal zona deben usarse avisadores que disponen de contactos abiertos de su relé de salida en estado normal. En caso de alarma tales avisadores deben cerrar los contactos del relé de salida.

Hay que destacar que la gran mayoría de los avisadores infrarrojos y de contacto magnético modernos disponen de contactos normalmente cerrados de su relé de salida. De esta forma, para las zonas en las cuales se incluyen estos avisadores, el estado normal debe determinarse como cerrado.

Los avisadores normalmente abiertos se conectan a la zona en paralelo y los normalmente cerrados - en serie.

En una zona se pueden conectar avisadores sólo de un tipo: o normalmente cerrados, o normalmente abiertos.

### Resistencias terminales

Si al conectar la zona no se usan resistencias terminales, para tal zona el equipo puede determinar sólo uno de dos estados: 'Alarma' o 'Norma'. Tal zona es muy vulnerable: si el estado normal para la zona se determina como abierto, es suficiente simplemente con cortar el cable de la zona en cualquier lugar accesible, y la zona para siempre se quedará en estado normal, en tal zona nunca se producirá una alarma. Nada mejor será una zona cuyo estado normal está determinado como cerrado: si se consigue cerrar los cables de alarma de la zona en cortocircuito, en esta zona tampoco nunca habrá una señal de alarma.

Una resistencia terminal instalada en la zona permite diferenciar un fallo en la zona de una alarma. Qué tipo de fallo puede ser determinado - ruptura o cortocircuito - depende del estado normal de la zona: para el estado normal de la zona abierta una resistencia terminal permite determinar la ruptura de la zona y para el estado normal cerrada - cortocircuito.

Dos resistencias terminales permite determinar la ruptura y el cortocircuito para la zona con cualquier estado normal.

> Para minimizar los fallos de las zonas de alarma, se recomienda conectar a las zonas como mínimo una resistencia terminal.

### Zona sin resistencias terminales

\imgcapt{img/04-02-v51-52-no-resitor-normal-open.png}{Zona normalmente abierta}

\imgcapt{img/04-02-v51-52-no-resitor-normal-close.png}{Zona normalmente cerrada}

### Zona con una resistencia terminal

\imgcapt{img/04-02-v52-one-resitor-normal-open.png}{Zona normalmente abierta}

\imgcapt{img/04-02-v52-one-resitor-normal-close.png}{Zona normalmente cerrada}

### Zona con dos resistencias terminales

\imgcapt{img/04-02-v52-two-resitor-normal-open.png}{Zona normalmente abierta}

\imgcapt{img/04-02-v52-two-resitor-normal-close.png}{Zona normalmente cerrada}

### Zonas por cable en el configurador

Al realizar la configuración del equipo hay que especificar expresamente la norma para la zona por cable, así como la cantidad de resistencias terminales. Se puede hacer en la pestaña '[Zonas](#config-zones)'.