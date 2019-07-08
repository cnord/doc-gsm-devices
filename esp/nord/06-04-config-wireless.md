\pagebreak

## Dispositivos inalámbricos

Mediante la pestaña 'Dispositivos inalámbricos' en el equipo se graban los dispositivos inalámbricos y sus parámetros, tales como el tipo, el retraso de entrada, retraso de salida, etc.
Todos los dispositivos inalámbricos se conectan al equipo 'Nord GSM' a través del expansor 'SN-Radio'. El expansor soporta la conexión de 31 dispositivo. Toda la lista de dispositivos se encuentra en el [sitio](https://shop.cnord.ru/sn.html).

### Conexión del dispositivo al equipo

\imgcapt{img/06-04-config-nord-02.png}{Adición de dispositivo, Pestaña 'Dispositivos inalámbricos'}

#### La mayoría de dispositivos
 
Para conectar los dispositivos CN-PIR, CN-PIR-Outdoor, CN-PIR-Mini, CN-Magnetic, CN-Magnetic-Mini, CN-Glass, CN-Fire, CN-Flood, CN-Flood-Mini, CN-Celsius, CN-Keypad, CN-Repeater, CN-Repeater 220, CN-Exit, CN-Smoke hay que hacer lo siguiente:

* Quitar la tapa del dispositivo;
* Instalar los elementos de alimentación;
* En la pestaña 'Dispositivos inalámbricos' del configurador pulsar el botón *Añadir dispositivo inalámbrico*;
* Cambiar el dispositivo inalámbrico al modo de unión mediante el cierre momentáneo de los contactos 'Reseteo'.

Con destellos del LED verde el dispositivo confirmará el paso al modo de unión
La activación del indicador rojo por 2 segundos avisa que la conexión del dispositivo al equipo se ha realizado con éxito

#### CN-Siren

Para conectar los dispositivos de tipo 'CN-Siren' y 'CN-Smoke' hay que hacer lo siguiente:

* Quitar la tapa delantera, instalar los elementos de alimentación;
* En la pestaña 'Dispositivos inalámbricos' del configurador, pulsar el botón *Añadir dispositivo inalámbrico*;
* Cambiar el dispositivo inalámbrico al modo de unión, cerrando el contacto 'negativo' del fijador de la batería y el contacto '4' en la base del avisador.

La activación del indicador rojo por 2 segundos avisa que la unión se ha realizado con éxito.

#### CN-KeyFob

Para conectar el dispositivo CN-KeyFob al equipo hay que hacer lo siguiente:

* Abrir el cuerpo del llavero, instalar la batería en el fijador, cerrar el cuerpo;
* En la pestaña 'Dispositivos inalámbricos' del configurador, pulsar el botón Añadir dispositivo inalámbrico;
* Pulsar y soltar cualquier botón en el llavero. El dispositivo periódicamente activará el indicador de color verde, lo que evidencia que se encuentra en el modo de 'Unión'. Si la indicación especificada no tiene lugar, pulsar y mantener pulsados al mismo tiempo los tres botones durante 2 segundos y más, con ello el indicador debe activarse en color verde. Mantener los botones hasta que se active el indicador en color rojo.

> Si el llavero servirá en calidad de Botón de emergencia, después de la unión hay que marcar la casilla 'Botón de emergencia activado'.

### Retransmisor

'CN-Repeater' y 'CN-Repeater 220' son retransmisores que sirven para aumentar la distancia de funcionamiento de los dispositivos inalámbricos.

Después de que aunque sea un retransmisor sea conectado al equipo en la pestaña 'Dispositivos inalámbricos' en la columna 'A través del retransmisor' para cada dispositivo aparecerá la posibilidad de elegir cómo este dispositivo debe transmitir las señales al equipo: directamente o a través del retransmisor especificado.

\imgcapt{img/06-04-config-nord-01.png}{Dispositivos inalámbricos configurados para funcionar a través del retransmisor}

> Preste atención que la conexión (unión) de cualquier dispositivo siempre se realiza directamente al equipo. Después de que se realice la conexión, el dispositivo se puede cambiar al modo de transmisión de señales a través del retransmisor.

No se puede crear una cadena de retransmisores: entre el equipo y el dispositivo inalámbrico sólo puede haber un retransmisor.

El algoritmo de funcionamiento de dispositivos inalámbricos está realizado de tal forma que si el retransmisor se estropea y el equipo 'oirá' el dispositivo sin el retransmisor, la recepción de señales de tales dispositivos se realizará sin el retransmisor.

### Recomendaciones de montaje

1.	La instalación del panel hay que realizarla en un lugar que se encuentre en acceso directo por radio hacia los lugares previstos de la instalación de avisadores, donde no haya construcciones metálicas y otras construcciones que puedan apantallar. Por ejemplo, detrás de la pared del lugar de la instalación del panel puede haber una caja de ventilación que obstaculiza el paso de la señal;
2.	Para mejorar un poco los parámetros de la vía de radio se puede enderezar la antena del expansor CN-Radio y sacarla fuera de los límites del cuerpo del panel;
3.	La comprobación de los lugares de la instalación de los sensores de radio debe realizarse en la posición de las puertas/ventanas/portales/rejas actual para el momento del arme del sistema de seguridad - normalmente, en estado cerrado;
4.	En el supuesto lugar de instalación del sensor no debe haber construcciones metálicas en la base de la pared (perfil metálico/armadura);
5.	Al elegir el lugar de la instalación, hay que determinar la calidad de comunicación entre el dispositivo y el equipo.

Para comprobar la calidad de comunicación en la parte del dispositivo inalámbrico hay que pulsar y mantener pulsado durante 3 segundos el tamper del dispositivo. Si el LED verde parpadea más de una vez, la calidad de la conexión es buena. Si se enciende el LED rojo, hay que cambiar el lugar de instalación del dispositivo.

Para comprobar la calidad de comunicación en la parte del equipo hay que guardar la configuración en el equipo y después abrir la pestaña 'Panel de estado' - 'Dispositivos inalámbricos'. Si para el dispositivo seleccionado el valor de la calidad de conexión está marcado como 'malo', se recomienda cambiar el lugar de la instalación prevista del dispositivo o usar el retransmisor 'CN-Repeater'.
