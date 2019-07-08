\pagebreak

# Acceso remoto al equipo {#remote-access}

## Descripción de la tecnología de acceso remoto

El acceso remoto al equipo incluye las siguientes funciones:

* Actualización remota del software en el objeto
* Configuración remota del objeto
* Arme y desarme remoto del objeto por el usuario
* Arme y desarme remoto del objeto por el operador de la consola
* Control del estado del saldo

Para el funcionamiento de todas las funciones enumeradas se requiere un software de consola compatible, por ejemplo, el 'Security Center'. Adicionalmente, para el funcionamiento de la función de actualización remota de los 'firmware', la configuración y el arme/desarme por el usuario se requiere la conexión del dispositivo a la 'Nube' (Nube de C.Nord pública - cloud.cnord.net - o Nube privada de la organización de seguridad).

El esquema de conexión tiene el siguiente aspecto:

\imgcapt{img/remote-intro.png}{}


El equipo se conecta al software de la consola y a la 'Nube' a través del protocolo CML con el uso de cifrado de flujo (protocolo CML - C.Nord Markup Language - desarrollo de la compañía C.Nord). El software de la consola también se conecta a la 'Nube' a través de un protocolo cifrado.

### Canal de comunicación equipo ↔ consola

El presente canal de comunicación se usa para el funcionamiento de las funciones de seguridad del equipo, tales como:

* Transmisión de eventos (alarmas / armes / desarmes / fallos) al software de la consola
* Arme y desarme remoto del objeto por el operador de la consola
* Control del estado del saldo

В общем случае прибор соединяется с пультом через публичную сеть (Интернет). Однако, некоторые охранные предприятия используют для связи `прибор ⟷ пульт` выделенные внутренние подсети операторов GSM-связи или локальные сети Ethernet.

En general el equipo se comunica con la consola a través de la red pública (Internet). Sin embargo, algunas empresas de seguridad usan para la comunicación equipo ↔ consola subredes internas dedicadas de operadores de comunicación GSM o redes locales Ethernet.

**Importante:** el arme/desarme remoto y el control del saldo sólo funcionan al conectar el equipo a través del canal IP de comunicación: Ethernet o GPRS.

### Canal de comunicación equipo ↔ 'Nube'

El presente canal de comunicación se usa para el funcionamiento de las funciones de servicio del equipo, tales como:

* Actualización remota del software en el objeto
* Configuración remota del objeto
* Arme y desarme remoto del objeto por el usuario

En el caso de uso de una 'Nube' pública el equipo se conecta con la 'Nube' a través de la red Internet. Si se usa una 'Nube privada', es posible organizar una conexión a través de las subredes internas dedicadas de los operadores de comunicación GSM o redes locales Ethernet.

Para el funcionamiento de todas las funciones de servicio el equipo debe encontrarse comunicado mediante comunicación IP con la 'Nube' a través de Ethernet o GPRS.

**Importante:** los posibles cortes en la comunicación dispositivo ↔ 'Nube' no influyen de ninguna forma en las funciones de seguridad del equipo.

### Canal de comunicación consola ↔ 'Nube'

El presente canal de comunicación se usa para proporcionar el funcionamiento de las funciones de servicio del equipo.

**El software de la consola transmite a la 'Nube':**

* información sobre los técnicos y sus permisos 
  *para el funcionamiento del panel del técnico*
  
* información sobre los administradores del Acceso a MyAlarm y sus objetos 
  *para el funcionamiento del Acceso a MyAlarm `my.cnord.net` y la aplicación móvil `MyAlarm`*
  
* eventos por objetos  
  *para el funcionamiento del Acceso a MyAlarm y la aplicación móvil*
  
**La 'Nube' transmite al software de la consola:**

* los eventos de intentos de conexión del técnico al objeto  
  *para el funcionamiento del panel del técnico*
  
* los eventos sobre intentos de arme/desarme desde la aplicación móvil `MyAlarm`
  *para el funcionamiento de la aplicación móvil*
  
* los eventos de comprobación del botón de emergencia mediante el `centro de llamadas` 
  *para el funcionamiento de la comprobación automatizada del botón de emergencia*
  
Si se usa una 'Nube' pública, el software de la consola se conecta con la 'Nube' a través de la red Internet. Si se usa una 'Nube privada' es posible organizar la conexión a través de la red local Ethernet.

**Importante:** los posibles cortes en la comunicación consola ↔ 'Nube' no influyen de ninguna forma en las funciones de seguridad del equipo.