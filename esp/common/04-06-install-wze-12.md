## Conexión del expansor "EW-12" {#install-wze-12}

"EW-12" - expansor de zonas por cable para paneles de control "Nord GSM", con su ayuda se puede aumentar la cantidad de zonas hasta 16 o la cantidad de salidas tipo "colector abierto".

\imgcapt{img/04-05-wze-12-1.png}{"EW-12"}

**Conexión al equipo**

El expansor se conecta al equipo al grupo de bornes "Lector", situado en la parte izquierda de la línea de bornes del equipo: el borne "1WR" del expansor se conectan al borne "DATA" del equipo y el borne "1WR GND" del expansor - al borne "GND" del equipo.

\imgcapt{img/04-05-wze-12.png}{Esquema de conexión del "EW-12" al equipo}

Si el expansor está conectado correctamente, el LED del expansor debe parpadear, las zonas aparecerán en el configurador automáticamente en la pestaña [Zonas](#config-zones).

**Alimentación del expansor**

Para conectar la alimentación del expansor sirven los bornes con el marcaje "GND PWR" y «+12V».

La alimentación puede suministrarse de dos formas:

* Del equipo mismo, pero con ello hay que tener en cuenta que la carga máxima es de 200 mA.
* De la fuente de alimentación ininterrumpida.


**Conexión de zonas al expansor**

Los bornes «Z1» – «Z8» sirven para la conexión del cable de señal de las zonas.
Los bornes «GND» - para la conexión del cable "negativo" de alimentación de las zonas y el segundo cable de señal de las zonas.
Los bornes «SNS PWR» sirven para la conexión del cable "positivo" de alimentación de las zonas.

Al igual que en el equipo mismo, en el expansor en cada una de las zonas se pueden conectar hasta dos resistencias. Los nominales de las resistencias y los esquemas de conexión de las zonas se muestran en el apartado Conexión de zonas por cable.

Cada borne «Z1» – «Z8» puede ser una zona o salida de tipo "colector abierto", esto se indica al configurar el panel de control:

* Si en el configurador la zona está desconectada, se puede usar como colector abierto.
* Si en el configurador la zona está conectada, no se puede usar como colector.




