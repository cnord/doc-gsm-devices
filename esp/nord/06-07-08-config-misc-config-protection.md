### Protección de la configuración

Mediante este apartado se pueden configurar los parámetros para la protección contra acceso no sancionado e introducción de cambios malintencionados en los parámetros de los equipos.

\imgcapt{img/06-07-config-nord-07-01.png}{Pestaña 'Varios', apartado 'Protección de la configuración'}

#### Contraseña para acceder al equipo

Una autentificación obligatoria a través de la contraseña al conectarse al equipo por USB es una forma más de garantizar la seguridad. De forma predeterminada la contraseña para la conexión al equipo por USB es **0000**. Para elevar la seguridad, hay que cambiar la contraseña de acceso estándar por una nueva. La longitud de la contraseña puede ser de 4 a 16 números. Se recomienda establecer una contraseña compuesta de la máxima cantidad permitida de números.

\imgcapt{img/06-07-config-nord-07-02.png}{Pestaña 'Varios', apartado 'Protección de la configuración', diálogo para cambiar la contraseña para acceder al equipo.}

Si la contraseña fue pérdida y no es posible conectarse al equipo de forma remota, sólo se puede recuperar el acceso al equipo reseteando los valores de todos sus parámetros a los parámetros de fábrica. Con ello serán eliminadas todas las configuraciones del equipo, incluyendo las zonas, los usuarios, las particiones, etc., y la contraseña para la conexión al equipo por USB volverá al valor predeterminado.

#### Permitir el reseteo de los valores de los parámetros a los parámetros de fábrica

La función de reseteo de los valores se puede activar o desactivar para un equipo en concreto. Permitiendo el reseteo de los valores de los parámetros, se puede establecer una **pausa antes del reseteo**. De forma predeterminada este parámetro está establecido por 30 segundos, sin embargo se puede elegir un valor de 5 minutos, 30 minutos, 12 horas o 24 horas. Sólo es posible resetear la configuración conectándose por USB.

Si la función de reseteo de la configuración está activada, la ventana para la introducción de la contraseña tendrá el botón 'Resetear la configuración'

\imgcapt{img/06-07-config-nord-07-03.png}{Pestaña 'Varios', apartado 'Protección la configuración', diálogo para resetear la configuración del equipo.}

Al pulsar el botón 'Resetear la configuración' el equipo crea un evento con el código **E752** y empieza la cuenta de la pausa establecida.

Se recomienda establecer el valor máximo del parámetro *Pausa antes del reseteo*, ya que tal retraso proporciona seguridad adicional. Si la configuración del dispositivo la resetea un malhechor, a la empresa de seguridad privada le da tiempo de reaccionar a un acceso no sancionado al equipo.

#### Activar la función 'Protección de cambio de servicio'

Si esta función está activada y los cambios fueron guardados en el equipo, para este equipo ya no se podrán cambiar los valores de los siguientes parámetros:

* direcciones para la conexión a través de GPRS;
* direcciones para la conexión a través de Ethernet;
* formato de estación para la transmisión por radio.

Antes de guardar la configuración en el equipo se muestra la advertencia:

\imgcapt{img/06-07-config-nord-07-04.png}{Pestaña 'Varios', apartado 'Protección de la configuración', advertencia de activación de la 'Protección de cambio de servicio'.}

La función 'protección de cambio de servicio' puede activarse al conectar por USB y también bajo programación remota. La función 'Protección de cambio de servicio' se puede desconectar únicamente poniéndose en [contacto con el soporte técnico](mailto:support@cnord.com) mediante una solicitud oficial a 'C-Nord'.