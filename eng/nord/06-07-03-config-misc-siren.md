### Siren {#config-misc-siren}

\imgcapt{img/06-07-config-nord-02.png}{“Miscellaneous” tab, “Siren” section}

** Siren connected**  

If the siren is connected to the same name output "Siren", then it is necessary to check the appropriate box. This will turn on the monitoring of the communication line with the siren, which allows to detect break and short circuit of the line, both with the siren turned off and with the siren turned on. If any of these faults are detected, an event with the code **E321** - *Faulty siren* is generated, which is sent to the receiver.

In addition to the same name output, the siren can be connected to any of the seven open collectors, without the need to check the "Siren connected" box. It is important to note that the device does not monitor the line status if the siren is connected to an open collector.

The siren is connected to the open collector as follows:

* The "plus" cable of the siren can be connected to any plus output of the control panel, for example, to the output for powering keypad or zones. 
* The "minus" siren cable shall be connected to one of seven open collectors: FIRE, DEFECT, LED_G, LED_Y, FIRE2, DEFECT2, DISABL.
* After connecting the siren, the output shall be configured using the automation rules. See more about the rules in the partition [Automatic controls section](# config-automation)


**Siren interval**

The "Siren interval" parameter is responsible for duration of the siren sound, regardless of how it is connected. After the parameter interval expires, the siren will stop.

**Interval for repeated enabling of the sound**

Use the "Interval for repeated enabling of the sound" parameter to specify the interval within which the siren will start to sound again, if the alarm reset has not occurred.

