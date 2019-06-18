### Alimentación de reserva

#### Tipo de fuente de alimentación de reserva

En el punto "Tipo de fuente de alimentación de reserva" se puede especificar qué fuente de reserva está conectada al dispositivo: batería o fuente de alimentación ininterrumpida. 

#### Si está conectada la batería

\imgcapt{img/06-07-config-nord-03-01.png}{Pestaña "Varios", apartado "Alimentación de reserva"}

Si en calidad de fuente de reserva fue elegida la batería, existe la posibilidad de activar dos parámetros:

* *Proteger la fuente de reserva contra la descarga profunda.* 

Si este parámetro está activado, al alcanzar una tensión de 8,5 V en los bornes de la batería, el equipo se desconectará para prevenir la posibilidad de descarga de la batería hasta un nivel crítico, en el cual su carga no puede ser recuperada.

* *Comprobar la calidad de la batería.* 

Para comprobar la calidad de la batería el equipo conecta periódicamente la carga y controla la caída de la tensión. Si el valor de la caída de la tensión bajo la carga superó 2 V, se forma el evento **E309** - *Fallo de la batería*.

#### Si está conectada la fuente de alimentación ininterrumpida

\imgcapt{img/06-07-config-nord-03-02.png}{Pestaña "Varios", apartado "Alimentación de reserva", seleccionado el valor "Fuente de alimentación de reserva" para el parámetro "Tipo de fuente de alimentación de reserva".}

Si en calidad de fuente de reserva fue seleccionada la fuente de alimentación de reserva, no se pueden activar los parámetros adicionales (protección contra la descarga profunda y control de la calidad de la batería). 