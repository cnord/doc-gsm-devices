## Conexión del equipo a la computadora {#firmware-driver}

En la computadora a la cual se conecta al equipo, debe estar instalado un sistema operativo de la familia Windows (XP/7/8/10). No importa si el sistema operativo es de 32 o de 64 bits.

> Antes de conectar el equipo a la computadora, le recomendamos *insistentemente* que lo conecte a una alimentación principal o de reserva. Si el equipo se alimenta únicamente por USB, puede funcionar de forma no estable.

Antes de empezar a trabajar con el equipo, hay que instalar el controlador. El equipo se conecta a la computadora mediante un cable USB-Mini y el controlador es un software especial que le permite a los programas, con los cuales interacciona el usuario, intercambiar datos con el equipo.

Para todos los sistemas operativos se suministra el mismo controlador.

## Instalación del controlador en Windows XP y Windows 7

Durante la primera conexión del equipo a la computadora en la bandeja del sistema del panel de tareas aparecerá una notificación de que fue encontrado un dispositivo nuevo. La instalación del controlador puede realizarse a través del 'Administrador de dispositivos'. Para ello hay que entrar en el menú 'Inicio', pulsar el botón derecho del ratón en 'Equipo' y seleccionar Administrar, a continuación en el medio de la izquierda seleccionar 'Administrador de dispositivos'.

\imgcapt{img/05-02-driver-02.png}{}

\imgcapt{img/05-02-driver-03.png}{}

Hay que pulsar el botón derecho del ratón sobre el dispositivo Soyuz CDC y seleccionar el punto del menú 'Actualizar software del controlador'.

\imgcapt{img/05-02-driver-04.png}{}

Hay que renunciar a la propuesta de buscar automáticamente software del controlador actualizado para un nuevo dispositivo, seleccionando la instalación del controlador de forma manual.

\imgcapt{img/05-02-driver-05.png}{Selección de instalación manual}

Especificar la ruta hacia el archivo **Driver** y pulsar Siguiente.

\imgcapt{img/05-02-driver-06.png}{Selección del lugar de búsqueda del controlador}

El controlador para el equipo 'Nord GSM' no tiene firma digital. Por ello hay que confirmarle expresamente al sistema operativo de que hace falta instalarlo.

\imgcapt{img/05-02-driver-07.png}{Confirmar la instalación del controlador sin firma digital}

Después de finalizar la instalación del controlador hay que pulsar el botón 'Cerrar'.

\imgcapt{img/05-02-driver-08.png}{Finalización de la instalación del controlador}

Para asegurarse que el controlador para el dispositivo está instalado, se puede abrir el 'Administrador de dispositivos' de Windows y buscar el puerto serie virtual que corresponde al equipo conectado a la computadora.

\imgcapt{img/05-02-driver-09.png}{Puerto serie del equipo en el 'Administrador de dispositivos'}


## Instalación del controlador en Windows 8

El sistema operativo Windows 8 no permite instalar controladores sin firma digital, tal como era posible en las versiones anteriores. Por ello, antes de empezar a instalar los controladores del equipo en este sistema operativo, hay que iniciarlo en modo especial - con comprobación obligatoria de firma de controladores deshabilitada.

Para iniciar el sistema operativo Windows 8 con la comprobación de la firma digital de los controladores deshabilitada, hay que hacer lo siguiente por pasos.

Pulsar la combinación de teclas **Win+I**, a continuación, manteniendo pulsada la tecla **Shift** seleccionar **'Apagar'** - **'Reiniciar'**

\imgcapt{img/05-02-driver-10.png}{Reinicio para cambiar los parámetros de inicio}

Después de que el sistema operativo se reinicie, aparecerá la ventana de parámetros de inicio. Hay que seleccionar '**Solucionar problemas**';

\imgcapt{img/05-02-driver-11.png}{Entrar en el modo de Solucionar problemas}

En la ventana de '**Solucionar problemas**' hay que seleccionar '**Opciones avanzadas**':

\imgcapt{img/05-02-driver-12.png}{Opciones avanzadas del menú de Solucionar problemas}

En la ventana '**Opciones avanzadas**' hay que seleccionar '**Configuración de inicio**':

\imgcapt{img/05-02-driver-13.png}{Configuración de inicio del sistema operativo}

En la ventana '**Configuración de inició**' hay que pulsar con el botón izquierdo del ratón el botón '**Reiniciar**'

\imgcapt{img/05-02-driver-14.png}{Reiniciar}

El sistema operativo se reiniciará otra vez y a continuación aparecerá la ventana '**Configuración de inicio**'. En esta ventana hay que pulsar la tecla F7, para continuar el inicio del sistema operativo con la comprobación de la firma digital de los controladores deshabilitada


\imgcapt{img/05-02-driver-15.png}{Deshabilitar el uso obligatorio de controladores firmados}

Después de que el sistema operativo se reinicie, hay que instalar el controlador del equipo de la misma forma que en los sistemas operativos Windows XP / Windows 7. Después de instalar el controlador hay que reiniciar la computadora otra vez para abrir de la comprobación de la firma digital de los controladores.

