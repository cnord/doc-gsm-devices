### Arme y desarme

En este apartado se pueden especificar diferentes parámetros que influirán en el proceso de arme del sistema de seguridad y desarme del sistema de seguridad.

\imgcapt{img/06-07-config-nord-04.png}{Pestaña 'Varios', apartado 'Arme y desarme'}

#### Prohibir el arme en caso de alarma en las zonas con retraso de salida

De forma predeterminada la alarma en las zonas con retraso de salida se ignora para el momento del arme del sistema de seguridad. Esto está hecho para que el usuario pueda armar el sistema de seguridad del objeto y cerrar tranquilamente la puerta de entrada. Pero si desea tener la seguridad de que todas las zonas de alarma están bajo la norma para el momento del arme, se puede activar el control de alarma en las zonas con retraso de salida. Para ello hay que marcar la casilla para los parámetros *Prohibir el arme en caso de alarma en la zona con retraso de salida*.

#### Prohibir el arme en caso de ausencia de la alimentación principal (220 V)

Al establecer este parámetro, será imposible armar el equipo si el equipo funciona con alimentación de reserva y no hay alimentación principal.

#### Prohibir el arme en caso de ausencia de comunicación IP con el 'Security Center'

Al establecer este parámetro, será imposible armar el equipo si no hay comunicación por GPRS o Ethernet.

#### Permitir el arme y el desarme remoto desde el 'Security Center'

La activación de este parámetro permitirá controlar de forma remota el estado del sistema de seguridad desde la aplicación móvil y la consola de seguridad.

#### Activar los códigos de desarme forzado

Se considera código de desarme forzado el código que se diferencia del código del usuario en una unidad en dirección mayor o menor. Por ejemplo, si el código del usuario es '1234', los códigos de desarme forzado serán '1233' y '1235'. Teniendo en cuenta:

* si el código del usuario termina con el número '0', el código de desarme forzado solo será uno – en una unidad superior. Por ejemplo, si el código del usuario es igual a '5840', el código de desarme forzado sólo será el código '5841'.
* si el código del usuario termina con el número '9', el código de desarme forzado también será solo uno – en una unidad inferior. Por ejemplo, si el código del usuario es igual a '5849', el código de desarme forzado sólo será el código '5848'.

#### No iniciar el retraso de salida en el CN-K

Debido a que el teclado 'CN-K' es inalámbrico y funciona con baterías, la desactivación de la indicación de retraso de entrada permite aumentar el tiempo de funcionamiento de las baterías en el teclado 'CN-K'.
