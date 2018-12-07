\pagebreak

# Event codes {#codes-table}


\definecolor{light-gray}{gray}{0.7}
\renewcommand{\arraystretch}{1.4}
\begin{tabularx}{\textwidth}{cclX}
\textbf{Contact ID} & \textbf{EPAF} & \textbf{Event} & \textbf{Note} \\ \midrule

E110 & SY & Fire & Fire alarm\\ \arrayrulecolor{light-gray}\hline
E118 & SY & Warning & Fire danger\\ \arrayrulecolor{light-gray}\hline
E120 & SX & Alarm & Panic button \\ \arrayrulecolor{light-gray}\hline 
E121 & RP & Alarm & Forced disarming \\ \arrayrulecolor{light-gray}\hline 
E130 & AA..DR & Alarm &Armed zone \\ \arrayrulecolor{light-gray}\hline
E133 & AA..DR & Alarm & 24-hour armed zone\\ \arrayrulecolor{light-gray}\hline
E137 & RS & Alarm & Open device case (tamper)\\ \arrayrulecolor{light-gray}\hline
E138 & SQ & Warning & Possible alarm\\ \arrayrulecolor{light-gray}\hline
E141 & AA..DR & Alarm & Break of armed zone\\ \arrayrulecolor{light-gray}\hline
E142 & AA..DR & Alarm & Short circuit of armed zone\\ \arrayrulecolor{light-gray}\hline
E144 & AA..DR & Alarm & Open sensor case (tamper)\\ \arrayrulecolor{light-gray}\hline
E146 & AA..DR & Alarm & Armed zone without alarm (silent alarm)\\ \arrayrulecolor{light-gray}\hline
E150 & AA..DR & Alarm & 24-hour disarmed zone\\ \arrayrulecolor{light-gray}\hline
E151 & AA..DR & Alarm & Gas leak\\ \arrayrulecolor{light-gray}\hline
E154 & AA..DR & Alarm & Water leak\\ \arrayrulecolor{light-gray}\hline
E301 & RU & Fault & AC disconnection\\ \arrayrulecolor{light-gray}\hline
E302 & RW & Fault & Battery discharge\\ \arrayrulecolor{light-gray}\hline
E306 & -- & System & Changed device settings\\ \arrayrulecolor{light-gray}\hline
E309 & RW & Fault & Faulty battery\\ \arrayrulecolor{light-gray}\hline
E311 & RW & Fault & Disconnected battery\\ \arrayrulecolor{light-gray}\hline
E314 & HK..LB & Fault & Fault of wireless device main battery or fire zone power supply, connected via EFW-2\\ \arrayrulecolor{light-gray}\hline
E321 & SC & Fault & Faulty siren\\ \arrayrulecolor{light-gray}\hline
E331 & HK..LB & Fault & Zone break\\ \arrayrulecolor{light-gray}\hline
E332 & HK..LB & Fault & Zone short circuit\\ \arrayrulecolor{light-gray}\hline
E381 & HK..LB & Fault & Communication with wireless device is lost\\ \arrayrulecolor{light-gray}\hline
E384 & HK..LB & Fault & Fault of backup battery of wireless device\\ \arrayrulecolor{light-gray}\hline
E401 & QT..23 & Disarming & Disarming by user code\\ \arrayrulecolor{light-gray}\hline
E403 & QT..23 & Disarming & Automatic disarming\\ \arrayrulecolor{light-gray}\hline
E461 & SL & Warning & Code breaking by user\\ \arrayrulecolor{light-gray}\hline
E469 & -- & Disarming & Disarming of partition, which was armed, but was deleted from device settings during reconfiguration\\ \arrayrulecolor{light-gray}\hline
E470 & TA & Arming rejection & After this message arming rejection reason is transmitted (codes E471 – E476)\\ \arrayrulecolor{light-gray}\hline
E471 & -- & Arming rejection & Security services are not paid\\ \arrayrulecolor{light-gray}\hline
E472 & RU & Arming rejection & No AC\\ \arrayrulecolor{light-gray}\hline
E473 & 74 & Arming rejection & No IP communication with receiver\\ \arrayrulecolor{light-gray}\hline
E474 & -- & Arming rejection & Fault in \\ \arrayrulecolor{light-gray}\hline
E475 & -- & Arming rejection & Alarm in zone which is included in partition to be armed\\ \arrayrulecolor{light-gray}\hline
E476 & RS & Arming rejection & Open device body\\ \arrayrulecolor{light-gray}\hline
E499 & QT..23 & Disarming & Disarming from receiver\\ \arrayrulecolor{light-gray}\hline
E521 & -- & System & Siren is disabled in settings\\ \arrayrulecolor{light-gray}\hline
E601 & SM & Test & Event is generated when channel is enabled in state panel \\ \arrayrulecolor{light-gray}\hline
E602 & SN & Test & Self-test\\ \arrayrulecolor{light-gray}\hline
E627 & -- & System & Mode of programming via USB is enabled\\ \arrayrulecolor{light-gray}\hline
E628 & -- & System & Mode of programming via USB is disabled\\ \arrayrulecolor{light-gray}\hline
E750 & -- & System & Incorrect password when connecting via USB\\ \arrayrulecolor{light-gray}\hline
E751 & -- & System & Discrete output is closed\\ \arrayrulecolor{light-gray}\hline
E752 & -- & System & Reset to factory defaults is started\\ \arrayrulecolor{light-gray}\hline
E754 & -- & System & Channel switching by audit system command\\ \arrayrulecolor{light-gray}\hline
E756 & 56 & Fault & Keypad fault\\ \arrayrulecolor{light-gray}\hline
E757 & 57 & Fault & Fault of communication with fire indication device “Fire”\\ \arrayrulecolor{light-gray}\hline
E758 & 58 & Fault & Fault of communication with CN-WRL \\ \arrayrulecolor{light-gray}\hline
R110 & DS..HJ & Reset & Fire alarm\\ \arrayrulecolor{light-gray}\hline
R118 & DS..HJ & Reset & Danger of fire\\ \arrayrulecolor{light-gray}\hline
R120 & DS..HJ & Reset & Panic button\\ \arrayrulecolor{light-gray}\hline
R130 & DS..HJ & Reset & Armed zone\\ \arrayrulecolor{light-gray}\hline
R133 & DS..HJ & Reset & 24-hour armed zone\\ \arrayrulecolor{light-gray}\hline
R137 & RT & Reset & Closed device case (tamper) \\ \arrayrulecolor{light-gray}\hline
R141 & DS..HJ & Reset & Norm of zone after break (armed)\\ \arrayrulecolor{light-gray}\hline
R142 & DS..HJ & Reset & Norm of zone after short circuit (armed)\\ \arrayrulecolor{light-gray}\hline
R144 & DS..HJ & Reset & Closed sensor case (tamper)\\ \arrayrulecolor{light-gray}\hline
R146 & DS..HJ & Reset & Armed zone without siren (silent alarm)\\ \arrayrulecolor{light-gray}\hline
R150 & DS..HJ & Reset & 24-hour disarmed zone\\ \arrayrulecolor{light-gray}\hline
R151 & DS..HJ & Reset & Gas leak\\ \arrayrulecolor{light-gray}\hline
R154 & DS..HJ & Reset & Water leak\\ \arrayrulecolor{light-gray}\hline
R301 & RV & Restoration & AC restored\\ \arrayrulecolor{light-gray}\hline
R302 & RX & Restoration & Battery charged\\ \arrayrulecolor{light-gray}\hline
R305 & RR & System & Device restart\\ \arrayrulecolor{light-gray}\hline
R309 & RX & Restoration & Operational battery\\ \arrayrulecolor{light-gray}\hline
R311 & RX & Restoration & Battery connected\\ \arrayrulecolor{light-gray}\hline
R314 & DS..HJ & Restoration & Main battery of wireless device is connected\\ \arrayrulecolor{light-gray}\hline
R321 & SD & Restoration & Operational siren\\ \arrayrulecolor{light-gray}\hline
R331 & DS..HJ & Restoration & Norm of zone after break\\ \arrayrulecolor{light-gray}\hline
R332 & DS..HJ & Restoration & Norm of zone after short circuit\\ \arrayrulecolor{light-gray}\hline
R381 & DS..HJ & Restoration & Restored communication with wireless device\\ \arrayrulecolor{light-gray}\hline
R384 & DS..HJ & Restoration & Wireless device backup battery is connected\\ \arrayrulecolor{light-gray}\hline
R401 & OV..WX & Arming & Arming by user code\\ \arrayrulecolor{light-gray}\hline
R403 & PR & Arming & Automatic arming\\ \arrayrulecolor{light-gray}\hline
R499 & OV..WX & Arming & Arming from receiver\\ \arrayrulecolor{light-gray}\hline
R521 & -- & System & Siren enabled in device settings\\ \arrayrulecolor{light-gray}\hline
R751 & -- & System & Open discrete output\\ \arrayrulecolor{light-gray}\hline
R752 & -- & System & Reset of parameter values is cancelled\\ \arrayrulecolor{light-gray}\hline
R753 & -- & System & Restart for an unknown reason\\ \arrayrulecolor{light-gray}\hline
R754 & -- & System & Restart by audit system command\\ \arrayrulecolor{light-gray}\hline
R755 & -- & System & Discrete output is opening-closing\\ \arrayrulecolor{light-gray}\hline
R756 & 64 & Restoration & Restoration of keypad fault\\ \arrayrulecolor{light-gray}\hline
R757 & 65 & Restoration & Restoration of communication with fire indication device “Fire”\\ \arrayrulecolor{light-gray}\hline
R758 & 66 & Restoration & Restoration of communication with CN-WRL\\ \arrayrulecolor{light-gray}\hline
R903 & -- & System & Device firmware updated\\

\bottomrule
\end{tabularx}
