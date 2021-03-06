## Built-In Keypad

\imgcapt{img/k14.png}{Keypad}

The device state can be controlled or its status can be recognized using the built-in keypad. 

### Arming and Disarming

The device has the ability to arm and disarm several partitions with one user code. The partitions that can be armed or disarmed with a specific code are configured during the device configuration.

#### Arming

To arm a partition, it is necessary to press the "house" icon and enter the user code.

* if the code is correct, then the site (partition) will be armed, the keypad will confirm the arming by turning on the red LED. Or the countdown of the exit delay will start, which will be accompanied by a sound and LED indication.
* if the code is incorrect or the user who owns this code has more than one partition, the keypad will display an error.
* if arming is not possible, the keypad will display an error.

\imgcapt{img/arm.png}{}

If several partitions are assigned to the user, then first the user shall click the "house" button, select the partition, which state he/she wants to change, and then type the code.

\imgcapt{img/arm_part.png}{Example of arming of partition No. 1 with code 1234}

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

\imgcapt{img/disarm_part.png}{Example of disarming of partition No. 1 with code 1234}

The exit or entry delay countdown is indicated by the intermittent sound, which is reproduced during the entire delay interval. The sound indication of the exit or entry delay is disabled when any button on the keypad is pressed.

### Getting Information about Status

The keypad has green and red LEDs:

* Red LED is lighted when a partition is armed.
* If the partition is disarmed, the green LED is lighted.
* Red and green LEDs flash simultaneously if an error occurs. For example, if an incorrect user code is entered or in case of arming rejection.

#### Getting Information about Site Status

To get information about a site status press **i** button:

* if all device partitions are disarmed, then green LED is lighted;
* if some partitions are armed, and others are disarmed, the keypad will display error, since it is necessary to clearly specify the number of the partition, which status shall be received;
* if the device configuration does not have partitions, then the device will display an error;

#### Getting Information about Partition Status

To get information about a partition status press the partition number button and **i** button:

* if the partition is armed, then red LED will be lighted;
* if the partition is disarmed, then green LED will be lighted;
* if the device configuration does not have a partition with such a number, an error is displayed.

### Panic Button

If the device configuration permits the use of the keypad as a panic button, then for activation it is necessary to press and hold the "houses" button for 3 seconds. The panic button pressing is confirmed by turning on of green and red LEDs for 1 second accompanied by sound.

If the device configuration prohibits the use of the keypad as a panic button, then the keypad will display an error.

### Backlight and Sound Turning Off

Built-in keypad can turn on and off the sound and backlight.

To turn on or turn off the sound confirmation of pressing the buttons, simultaneously press and hold "#" and "9" buttons.
To turn the backlight on or off, simultaneously press and hold "#" and "0" buttons. 
