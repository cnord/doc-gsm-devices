## Built-in keypad

\imgcapt{img/k14.png}{K14-LED keypad}

Using the keypad, the user can perform the following tasks:

* check the partition status (armed/disarmed);
* arm or disarm a partition;
* check about the beginning or active exit or entry delay;
* check the protection state of the entire device;

The keypad has green and red LEDs:

* the red LED is on continuously if all device partitions are armed;
* if the partition is disarmed, the red LED goes out and the green LED is lit.
* Red and green LEDs flash simultaneously if an error occurs. For example, if an incorrect user code is entered or in case of arming rejection.

### Getting Information about Site Status

To get information about a site status press **i** button:

* if the partitions are configured on the device and all partitions are armed, the red LED will turn on.
* if the partitions are configured on the device and all partitions are disarmed, the green LED will turn on.
* if the partitions are configured on the device and some of them are armed and others are disarmed, the keypad displays an error indication.
* if the partitions are not configured on the device, the keypad displays an error indication.

### Getting Information about Partition Status

To get information about a partition status press the partition number button and **i** button:

* if the partition is armed, the red LED will turn on
* if the partition is disarmed, the green LED will turn on.
* if the partition does not exist, the keypad displays an error indication.

### Arming and Disarming

The device has the ability to arm and disarm several partitions with one user code. The partitions that can be armed or disarmed with a specific code are configured during the device configuration.

#### Arming

To arm a partition, it is necessary to press the "house" icon and enter the user code.

* if the code is correct, then the site (partition) will be armed, the keypad will confirm the arming by turning on the red LED. Or the countdown of the exit delay will start, which will be accompanied by a sound and LED indication.
* if the code is incorrect or the user who owns this code has more than one partition, the keypad will display an error.
* if arming is not possible, the keypad will display an error.

\imgcapt{img/arm.png}{}

If several partitions are assigned to the user code, then first the user shall click the "house" button, select the partition, which state he/she wants to change, then # and enter the user code.

\imgcapt{img/arm_part.png}{Example of partition arming}

#### Arming Rejection

"Arming rejection" is the impossibility to arm the site, if the security alarm on the site is faulty, or arming is prohibited due to lack of payment for security services.

There are the following reasons for arming rejection:

* malfunction of one or more zones;
* alarm in one or more zones;
* no communication with the panel program via IP channel;
* absence of 220V on the site;
* no payment for security services;
* the device case is opened.

#### Disarming

If the user can control only one partition, to disarm it is necessary to enter the user code.

* if the code is correct, then the site (partition) will be disarmed. The keypad will confirm disarming by turning on the green LED;
* if the code is incorrect or the user, who owns this code, can control several partitions, the keypad will display an error.

\imgcapt{img/disarm.png}{}

If the user can control several partitions, to disarm them, it is necessary to type the partition number, then # and enter the user code.

* If the code is correct, then the partition will be disarmed. The keypad will confirm disarming by turning on the green LED.
* In case of repeated disarming of the same partition, the keypad will display its status: the green LED will turn on.

\imgcapt{img/disarm_part.png}{Example of disarming with partition selection}

The exit or entry delay countdown is indicated by the intermittent sound, which is reproduced during the entire delay interval. The sound indication of the exit or entry delay is disabled when any button on the keypad is pressed.

### Sound and Voice Indication

The keypad has a built-in speaker, through which the voice indication and beep indication are made. Pressing the buttons on the keypad is accompanied by a beep that confirms the press.

The voice indicates the following:

* Arming and disarming of the partitions and the entire site;
* Arming rejections;
* Warnings about receivables during arming;
* The status of the partition or the entire site (when the i key is pressed).

The keypad has a volume control for the built-in speaker. The Adjustment is five-step - from the state "off" to the volume levels from the first to the fourth. The volume level can be selected by pressing the "#" and "9" keys.

### Panic Button

If the device configuration permits the use of the keypad as a panic button, then for activation it is necessary to press and hold the "houses" button for 3 seconds. The panic button pressing is confirmed by turning on of green and red LEDs for 1 second accompanied by sound.

If the device configuration prohibits the use of the keypad as a panic button, then the keypad will display an error.
