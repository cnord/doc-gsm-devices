\pagebreak

# Códigos de eventos {#codes-table}


\definecolor{light-gray}{gray}{0.7}
\renewcommand{\arraystretch}{1.4}
\begin{tabularx}{\textwidth}{cclX}
\textbf{Contact ID} & \textbf{EPAF} & \textbf{Evento} & \textbf{Observación} \\ \midrule

E110 & SY & Incendio & Alarma de incendio\\ \arrayrulecolor{light-gray}\hline
E118 & SY & Advertencia & Опасность пожара\\ \arrayrulecolor{light-gray}\hline
E120 & SX & Alarma & Botón de emergencia \\ \arrayrulecolor{light-gray}\hline 
E121 & RP & Alarma & Desarme forzado \\ \arrayrulecolor{light-gray}\hline 
E130 & AA..DR & Alarma & Zona de seguridad\\ \arrayrulecolor{light-gray}\hline
E133 & AA..DR & Alarma & Zona de seguridad 24 horas\\ \arrayrulecolor{light-gray}\hline
E137 & RS & Alarma & Cuerpo del equipo abierto (tamper)\\ \arrayrulecolor{light-gray}\hline
E138 & SQ & Advertencia & Alarma probable\\ \arrayrulecolor{light-gray}\hline
E141 & AA..DR & Alarma & Ruptura de la zona armada\\ \arrayrulecolor{light-gray}\hline
E142 & AA..DR & Alarma & Cortocircuito de la zona armada\\ \arrayrulecolor{light-gray}\hline
E144 & AA..DR & Alarma & Cuerpo del sensor abierto (tamper)\\ \arrayrulecolor{light-gray}\hline
E146 & AA..DR & Alarma & Zona de seguridad sin sirena (alarma silenciosa)\\ \arrayrulecolor{light-gray}\hline
E150 & AA..DR & Alarma & Zona no de seguridad 24 horas\\ \arrayrulecolor{light-gray}\hline
E151 & AA..DR & Alarma & Fuga de gas\\ \arrayrulecolor{light-gray}\hline
E154 & AA..DR & Alarma & Fuga de agua\\ \arrayrulecolor{light-gray}\hline
E301 & RU & Fallo & Desconexión de 220 V\\ \arrayrulecolor{light-gray}\hline
E302 & RW & Fallo & Batería descargada\\ \arrayrulecolor{light-gray}\hline
E306 & -- & Sistema & Configuración del equipo modificada\\ \arrayrulecolor{light-gray}\hline
E309 & RW & Fallo & Fallo de la batería\\ \arrayrulecolor{light-gray}\hline
E311 & RW & Fallo & Batería desconectada\\ \arrayrulecolor{light-gray}\hline
E314 & HK..LB & Fallo & Fallo de la batería principal del dispositivo inalámbrico o la alimentación de la zona de incendio conectada a través del EF-2\\ \arrayrulecolor{light-gray}\hline
E321 & SC & Fallo & Fallo de la sirena\\ \arrayrulecolor{light-gray}\hline
E331 & HK..LB & Fallo & Ruptura de la zona\\ \arrayrulecolor{light-gray}\hline
E332 & HK..LB & Fallo & Cortocircuito de la zona\\ \arrayrulecolor{light-gray}\hline
E381 & HK..LB & Fallo & Pérdida de conexión con el dispositivo inalámbrico\\ \arrayrulecolor{light-gray}\hline
E384 & HK..LB & Fallo & Fallo de la batería de reserva del dispositivo inalámbrico\\ \arrayrulecolor{light-gray}\hline
E401 & QT..23 & Desarme & Desarme con el código de usuario\\ \arrayrulecolor{light-gray}\hline
E403 & QT..23 & Desarme & Desarme automático\\ \arrayrulecolor{light-gray}\hline
E461 & SL & Advertencia & Múltiples intentos de introducción del código por el usuario\\ \arrayrulecolor{light-gray}\hline
E469 & -- & Desarme & Desarme de la partición que estaba armada, pero durante la configuración fue eliminada de los ajustes del equipo.\\ \arrayrulecolor{light-gray}\hline
E470 & TA & Denegación de arme & A continuación de este mensaje se transmite el motivo de la denegación del arme (códigos E471 - E476)\\ \arrayrulecolor{light-gray}\hline
E471 & -- & Denegación de arme & Servicios de seguridad impagados\\ \arrayrulecolor{light-gray}\hline
E472 & RU & Denegación de arme & Ausencia de 220V\\ \arrayrulecolor{light-gray}\hline
E473 & 74 & Denegación de arme & No hay comunicación IP con la consola de seguridad\\ \arrayrulecolor{light-gray}\hline
E474 & -- & Denegación de arme & Fallo en la zona que entra en la partición que se arma\\ \arrayrulecolor{light-gray}\hline
E475 & -- & Denegación de arme & Alarma en la zona que entra en la partición que se arma\\ \arrayrulecolor{light-gray}\hline
E476 & RS & Denegación de arme & Cuerpo del equipo abierto\\ \arrayrulecolor{light-gray}\hline
E499 & QT..23 & Desarme & Desarme desde la consola de seguridad\\ \arrayrulecolor{light-gray}\hline
E521 & -- & Sistema & Sirena activada en la configuración\\ \arrayrulecolor{light-gray}\hline
E601 & SM & Prueba & El evento se forma al activar el canal en el panel de estado \\ \arrayrulecolor{light-gray}\hline
E602 & SN & Prueba & Prueba automática\\ \arrayrulecolor{light-gray}\hline
E627 & -- & Sistema & Activado el modo de programación por USB\\ \arrayrulecolor{light-gray}\hline
E628 & -- & Sistema & Desactivado el modo de programación por USB\\ \arrayrulecolor{light-gray}\hline
E750 & -- & Sistema & Contraseña incorrecta para la conexión por USB\\ \arrayrulecolor{light-gray}\hline
E751 & -- & Sistema & Salida discreta cerrada\\ \arrayrulecolor{light-gray}\hline
E752 & -- & Sistema & Activado el reseteo de los valores de los parámetros a los parámetros de fábrica\\ \arrayrulecolor{light-gray}\hline
E754 & -- & Sistema & El cambio del canal por comando del sistema de auditoría\\ \arrayrulecolor{light-gray}\hline
E756 & 56 & Fallo & Fallo del teclado\\ \arrayrulecolor{light-gray}\hline
E757 & 57 & Fallo & Fallo de comunicación del bloque de indicación remota 'Incendio'\\ \arrayrulecolor{light-gray}\hline
E758 & 58 & Fallo & Fallo de comunicación con 'CN-Radio'\\ \arrayrulecolor{light-gray}\hline
R110 & DS..HJ & Reseteo & Alarma de incendio\\ \arrayrulecolor{light-gray}\hline
R118 & DS..HJ & Reseteo & Peligro de incendio\\ \arrayrulecolor{light-gray}\hline
R120 & DS..HJ & Reseteo & Botón de emergencia\\ \arrayrulecolor{light-gray}\hline
R130 & DS..HJ & Reseteo & Zona de seguridad\\ \arrayrulecolor{light-gray}\hline
R133 & DS..HJ & Reseteo & Zona de seguridad 24 horas\\ \arrayrulecolor{light-gray}\hline
R137 & RT & Reseteo & Cuerpo del equipo cerrado (tamper) \\ \arrayrulecolor{light-gray}\hline
R141 & DS..HJ & Reseteo & Norma de la zona después de la ruptura (armada)\\ \arrayrulecolor{light-gray}\hline
R142 & DS..HJ & Reseteo & Norma de la zona después de un cortocircuito (armada)\\ \arrayrulecolor{light-gray}\hline
R144 & DS..HJ & Reseteo & Cuerpo del sensor cerrado (tamper)\\ \arrayrulecolor{light-gray}\hline
R146 & DS..HJ & Reseteo & Zona de seguridad sin sirena (alarma silenciosa)\\ \arrayrulecolor{light-gray}\hline
R150 & DS..HJ & Reseteo & Zona no de seguridad 24 horas\\ \arrayrulecolor{light-gray}\hline
R151 & DS..HJ & Reseteo & Fuga de gas\\ \arrayrulecolor{light-gray}\hline
R154 & DS..HJ & Reseteo & Fuga de agua\\ \arrayrulecolor{light-gray}\hline
R301 & RV & Recuperación & 220 V recuperados\\ \arrayrulecolor{light-gray}\hline
R302 & RX & Recuperación & Batería cargada\\ \arrayrulecolor{light-gray}\hline
R305 & RR & Sistema & Reinicio del equipo\\ \arrayrulecolor{light-gray}\hline
R309 & RX & Recuperación & Batería operacional\\ \arrayrulecolor{light-gray}\hline
R311 & RX & Recuperación & Batería conectada\\ \arrayrulecolor{light-gray}\hline
R314 & DS..HJ & Recuperación & Batería principal del dispositivo inalámbrico conectada\\ \arrayrulecolor{light-gray}\hline
R321 & SD & Recuperación & Sirena operacional\\ \arrayrulecolor{light-gray}\hline
R331 & DS..HJ & Recuperación & Norma de la zona después de la ruptura\\ \arrayrulecolor{light-gray}\hline
R332 & DS..HJ & Recuperación & Norma de la zona después del cortocircuito\\ \arrayrulecolor{light-gray}\hline
R381 & DS..HJ & Recuperación & Comunicación con el dispositivo inalámbrico recuperada\\ \arrayrulecolor{light-gray}\hline
R384 & DS..HJ & Recuperación & Batería de reserva del dispositivo inalámbrico conectada\\ \arrayrulecolor{light-gray}\hline
R401 & OV..WX & Arme & Arme con el código de usuario\\ \arrayrulecolor{light-gray}\hline
R403 & PR & Arme & Arme automático\\ \arrayrulecolor{light-gray}\hline
R499 & OV..WX & Arme & Arme desde la consola de seguridad\\ \arrayrulecolor{light-gray}\hline
R521 & -- & Sistema & Sirena activada en la configuración del equipo\\ \arrayrulecolor{light-gray}\hline
R751 & -- & Sistema & Salida discreta abierta\\ \arrayrulecolor{light-gray}\hline
R752 & -- & Sistema & Cancelado el reseteo de los valores de los parámetros\\ \arrayrulecolor{light-gray}\hline
R753 & -- & Sistema & Reinicio por motivo desconocido\\ \arrayrulecolor{light-gray}\hline
R754 & -- & Sistema & Reinicio por comando del sistema de auditoría\\ \arrayrulecolor{light-gray}\hline
R755 & -- & Sistema & La salida discreta se cierra - se abre\\ \arrayrulecolor{light-gray}\hline
R756 & 64 & Recuperación & Recuperación del fallo del teclado\\ \arrayrulecolor{light-gray}\hline
R757 & 65 & Recuperación & Recuperación de la comunicación con el bloque de indicación remota 'Incendio'\\ \arrayrulecolor{light-gray}\hline
R758 & 66 & Recuperación & Recuperación de la comunicación con 'CN-Radio'\\ \arrayrulecolor{light-gray}\hline
R903 & -- & Sistema & Firmware del dispositivo actualizado\\

\bottomrule
\end{tabularx}