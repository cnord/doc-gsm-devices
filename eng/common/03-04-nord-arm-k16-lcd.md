\pagebreak

## K16-LCD Keypad

\imgcapt{img/k16-lcd.png}{K16-LCD Keypad}

Using the K16-LCD keypad, the user can perform the following tasks:

* check the partition status (armed/disarmed);
* arm or disarm a partition;
* check about the beginning or active exit or entry delay;
* check the entire device status;
* find out if there is a power failure of the device;
* find out about the presence of faults.

### Arming and Disarming

The device has the ability to arm and disarm several partitions with one user code. The partitions that can be armed or disarmed with a specific code are configured during the device configuration.

#### Arming and Disarming without Partition Selection

If only one partition is assigned to the user code, then when typing the code, an attempt will be made to change the security status of this partition:

* if the partition is armed, then when the code is being typed, it will be disarmed;
* if the partition is disarmed, the procedure for the partition arming will begin when the code is being typed.

If arming is enabled, then arming is performed, or the exit delay interval is started, which is accompanied by a sound, LED and screen indication.

If arming is prohibited, then a sound indication of the rejection is made, and the reason for which the arming is impossible is displayed on the keypad screen.

#### Arming and Disarming with Partition Selection

If several partitions are assigned to the user code, then first the user shall select the partition, which state he/she wants to change, and then type the code.

To select a partition, the user shall first enter the number of the partition, which state he/she wants to change, and then click the "#" button.

> *Let’s suppose that the user wants to disarm partition number 2 using the code 1234. To do this, he/she shall press the following sequence of buttons on the keypad: 2 # 1234 *

If the user types the correct code with several partitions assigned, but previously he/she has not selected the partition, which state shall be changed, then such code is treated as incorrect.

#### Arming Rejection

"Arming rejection" is the impossibility to arm the site, if the security alarm on the site is faulty, or arming is prohibited due to lack of payment for security services.

There are the following reasons for arming rejection:

* malfunction of one or more zones;
* alarm in one or more zones;
* no communication with the panel program via IP channel;
* absence of 220V on the site;
* no payment for security services;
* the device case is opened.

### LED Indication

There are two LEDs on the K16-LCD keypad: “Emergency" and “Arm".

#### “Arm” LED

The LED has two display modes: standby mode and arming mode.

In standby mode, the “Arm” LED displays the status of the entire device:

* if only one partition is configured for the device, the LED is on, if this partition is armed, and turned off if disarmed;
* if several partitions are configured for the device, the LED is on, if all partitions are armed, and turned off if at least one partition is disarmed;
* if none of the conditions described above are met, then the LED is off.

In the arming mode, the LED "flashes rapidly" during the exit delay.

#### ”Emergency” LED

The LED is intended to indicate the absence of main power, as well as a malfunction of the backup power source:

* the LED is on if the main power is present and the backup power source is missing, discharged or defective; 
* the LED “flashes slowly", if there is no main power;
* the LED is off if main power is present, and there are no backup power failures.

> *The failure of the backup power source is indicated only if the battery is indicated as the backup power source in the device settings, and the backup power quality control is switched on.*

### Sound Indication

Pressing the buttons on the keypad is accompanied by a beep that confirms the press.

The exit or entry delay countdown is indicated by the intermittent sound, which is reproduced during the entire delay interval. The sound indication of the exit or entry delay is disabled when any button on the keypad is pressed.

> *Unlike the “Arm" LED, which indicates only the exit delay, the sound annunciator built into the K16-LCD keypad indicates both the exit and entry delay.*

### Screen Indication

The K16-LCD keypad is equipped with a two-line liquid crystal display, each line of which can display up to 16 alphanumeric characters.

The information displayed on the K16-LCD keypad screen depends on the current status of the device, as well as on operations performed by the user.

#### Standby indication - the device is completely disarmed

If all partitions of the device are disarmed and users do not perform any operations with the keypad, the keypad screen displays the current date and time, as well as information about the current faults of the device, if any.

Information about the current date and time is displayed on the first line of the screen.

The information on the faults is displayed on the second line of the screen.

Example of the keypad screen when the device is completely disarmed:  

	12.02.2015 10:25
	220V NOT CONNECTED

If there are several faults in the device, only the one of the highest priority is displayed on the keypad screen.

List of faults (listed in order of priority during display):

\definecolor{light-gray}{gray}{0.7}
\renewcommand{\arraystretch}{1.4}
\begin{tabularx}{\textwidth}{lX}

\textbf{Fault} & \textbf{Description} \\ \midrule

\texttt{PAY FOR SECURITY!} & The line is displayed if one of the values in the site settings that are performed in the Security Center software is intended to inform the user of the control panel of the need to pay for security services. \\ \arrayrulecolor{light-gray}\hline

\texttt{220V NOT CONNECTED} & The line is displayed if there is no main power on the device. When configuring the device, the device may not be allowed to arm when there is no main power. \\ \arrayrulecolor{light-gray}\hline

\texttt{NO IP CONNECTION}  & The string is displayed if there is no IP connection (over Ethernet or GPRS) with the Security Center. When configuring the device, the device may not be allowed to arm when there is no IP connection with the Security Center. \\ \arrayrulecolor{light-gray}\hline

\texttt{OPEN CASE!} & The line is displayed if the device case is open. \\ \arrayrulecolor{light-gray}\hline

\texttt{NN ZONE FAULT} & The line is displayed if a fault is detected in the wired or wireless zone connected to the device: an open or short circuit in the zone, no communication with the wireless device, discharged power supply of the wireless device, etc. \\ \arrayrulecolor{light-gray}\hline

\texttt{BATTERY IS NOT CONNECTED} & The line is displayed if the backup power source is not connected to the device. \\ \arrayrulecolor{light-gray}\hline

\texttt{BATTERY IS DISCHARGED} & The line is displayed if the voltage measured on the terminals for connecting the backup power source indicates that the backup power source is empty. \\ \bottomrule

\end{tabularx}

#### Standby indication - the device is partially armed

If some part of the device is armed and another part is disarmed and the user does not perform any operations with the keypad, the current time and a list of armed partitions is displayed on the keypad screen.

Information about armed partitions and current time are displayed in the first screen line.

The list of the armed partition numbers is displayed in the second screen line.

Example of the keypad screen when the device is partially armed:  

	ARMED       10:25
	PARTITIONS 1,4,5

#### Standby indication - the device is fully armed

If the device is fully armed and the user does not perform any operations with the keypad, the current time information that the device is fully armed are displayed on the keypad screen.

Example of the keypad screen when the device is fully armed:  

	ARMED       10:25
	ALL PARTITIONS

> If only one partition is configured for the device, then when it is armed, the line «\texttt{ALL PARTITIONS}» is not displayed.

#### Arming Indication

If the arming is allowed and there is no exit delay, the phrase «\texttt{ARMING...}» is displayed on the first line of the keypad screen for 3 seconds, after which the keypad screen switches to the standby mode corresponding to the device security state. 

If there is an exit delay, then during the exit delay , the phrase «\texttt{ARMING...NN}» is displayed in the first line of the keypad screen, where NN is the time in seconds of the exit delay. Information about the time, during which the exit delay will continue, is updated every second.

> The LED, sound and screen indication of the exit delay is disabled when any button on the keypad is pressed.

If according to the site settings in the Security Center software the user shall be informed about the need to pay for security services during arming and disarming, the second line of the keypad screen displays the phrase «\texttt{PAY FOR SECURITY!}».

Example of a keypad screen with arming indication:  

	ARMING...     18
	PAY FOR SECURITY!

#### Disarming Indication

If the disarming is allowed, then «\texttt{DISARMING...}» is displayed on the first line of the keypad screen for 3 seconds, after which the keypad screen switches to the standby mode corresponding to the device security status. 

If according to the site settings in the Security Center software the user shall be informed about the need to pay for security services during arming and disarming, the second line of the keypad screen displays the phrase «\texttt{PAY FOR SECURITY!}».

Example of a keypad screen with disarming indication:  

	DISARMING...     

** Indication of Arming Rejection**

If during arming a reason for which arming is impossible is detected, the information on the arming rejection and the reason are displayed on the keypad screen.

In addition, to indicate the arming rejection the sound indication is used: four single sound signals.

The first line of the keypad screen displays the phrase «\texttt{ARMING REJECTION}».

The second line of the keypad screen displays one possible reason for rejection:

* \texttt{PAY FOR SECURITY!}
* \texttt{220V NOT CONNECTED}
* \texttt{NO IP CONNECTION}
* \texttt{OPEN CASE!}
* \texttt{NN ZONE FAULT} 
* \texttt{NN ZONE ALARM}

> Correspondence of the phrases displayed in case of rejection according to the reasons that caused the fault is given above.

The screen indication of the rejection is displayed for 5 seconds, after which the keypad screen switches to the standby mode corresponding to the device security state.
