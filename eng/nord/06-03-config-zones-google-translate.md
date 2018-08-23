\pagebreak

## Zones {#config-zones}

On the "Zones" tab it is possible to configure parameters of wired zones, connected to the device. 

\imgcapt{img/06-03-config-nord-01.png}{"Zones" tab}

### Expanders

It is possible to connect to the device "Nord GSM" up to 8 wired zones without using additional equipment. in case, if using the expander of wired zones "EW-8" or "EW-12", the amount of wired zones increases up to 16.

#### "EW-8"
 
If "EW-8" is connected to the device, it is necessary to set the “EW-8 is connected" parameter in the check-box, then the mechanism of pooling wired zones is changed, and the total amount of zones on the tab increases up to 16.

The connection diagram of the expander to the device and also connection diagrams of zones to the expander are given in the section ["Connection of "EW-8"](#install-wze-8).

#### "EW-12"

If "EW-12" is connected to the device, additional zones will appear in the configurator automatically.
Features of working and connection diagram of the extender to the device are given in the section ["Connection of "EW-12"](#install-wze-12).

"EW-12" can not to be connected together with "EW-8".

### Numbering of the zones

The zones numbers displayed in the configurator and correspond to the terminals markings on the printed circuit board: "Z1" – zone 1, "Z2" - zone 2 and so on.

If the expander "EW-12" is connected to the device, then the zones of the expander correspond to the numbers 9-16, that is, the terminal "Z1" on the expander corresponds to the zone number 9 in the configurator, the terminal "Z2" - zone number 10, (...), terminal "Zn" corresponds to the zone (n+8).

If the expander "EW-8" is connected to the device, then the terminal" Z1 "is designed to connect the signal cables from the zones 1 and 9, terminal "Z2" - for cables from the zones 2 and 10 and so on. In other words, the N terminal intended for connection of cables from the zones of "N" and "N+8". 

### Zone on and off

The zone on/off button is located in the left column, just behind the zone number. The color of the button reflects the current status of the zone: if the button is green, the zone is on, if the button is red, it is off. The inscription on the button corresponds to the operation that will be performed when you press the button: the green button says "Off", because when you press the button, the zone will be turned off, and the red button says" On", because when you press the red button, the zone will be turned on.

In order for the device to begin to monitor the status of the zone, and also in order to be able to configure the zone, it must be enabled. If in the device there is at least one *included* zone having the type "Arm", "Arm without siren" or "Entrance", then such zone shall be added to the partition.

If the wire zone *is switched off*, its state and status changes are ignored by the device. Besides, if the zone is disabled, it cannot be added to the partition: it is not displayed in the list of available zones.

Turning off the zone can be useful if you need to temporarily stop the zone control, for example, due to its malfunction. You can turn off the zone both: when connected to the device locally (via USB) and when connected remotely from the Web-configurator.

### Zone type {#config-zones-types}

Setting the type for the zone is a key point in the zone setting, because this parameter completely determines the reaction of the device to the change in the zone state. From what type is specified for the zone depends on the following: 

* whether the device is always to respond to the transition of the zone in the "Alarm" state, or only when the partition to which the zone is armed;
* what event code will be sent to the control panel in case of alarm in the zone;
* whether the siren will be activated when the alarm in the zone;
* whether the power at the "SMOKE" terminal be turned off and back on after the alarm in the zone;
* whether the normal state of the zone will be monitored when the partition in which it is included is armed.

\pagebreak

The differences between the types of wire zones are shown in the table below:

\definecolor{light-gray}{gray}{0.7}
\renewcommand{\arraystretch}{1.4}
\newcolumntype{Y}{>{\raggedright\arraybackslash}X}
\begin{tabularx}{\textwidth}{llccY}
\toprule
\textbf{Zone type} & \textbf{Events codes} & \textbf{Arming / Disarming} & \textbf{Siren} & \textbf{Comment} \\
\midrule
Arm & E130 / R130 & Yes & Yes \\
\arrayrulecolor{light-gray}\hline
Arm without siren & E146 / R146 &  Yes & No \\
\arrayrulecolor{light-gray}\hline
Entrance  & E130 / R130 & Yes & Yes & The alarm in the zone is processed in a special way when arming and disarming (see below). \\
\arrayrulecolor{light-gray}\hline
Fire & E110 / R110 & No & Yes & The alarm in the zone is accompanied by a power supply reset of fire sensors (see below).\\
\arrayrulecolor{light-gray}\hline
Punic buttin with fixation & E120 / R120 & No & No \\
\arrayrulecolor{light-gray}\hline
Punic buttin without fixation & E120 / R120 & No & No & For a zone of this type is used at a different repeat interval of the alarm (see below).  \\
\arrayrulecolor{light-gray}\hline
Sensors tamper & E144 / R144 & No & Yes \\
\arrayrulecolor{light-gray}\hline
24-hours arm & E133 / R133 & No & Yes \\
\arrayrulecolor{light-gray}\hline
24-hours & E150 / R150 & No & Yes \\
\arrayrulecolor{light-gray}\hline
Water flood & E154 / R154 & No & Yes \\
\arrayrulecolor{light-gray}\hline
Gas leakage & E151 / R151 & No & Yes \\
\arrayrulecolor{light-gray}\hline
Temperature sensor & E158 / R158 & No & Yes & High temperature \\
\arrayrulecolor{light-gray}\hline
Temperature sensor & E159 / R159 & No & Yes & Low temperature \\
\bottomrule
\end{tabularx}
\captionof*{table}{Wired zones types}

If for the type of zone is "Yes"in the"Arming/Disarming" column, this means that the zone of this type can be protected or disarmed together with any of the partitions in which it is included. If "No" is specified for the zone type in the "Arming/disarming" column, it means that the zone of this type is armed *always*.
  
If for the zone type is set " Yes "in the"Siren" column, it means that the alarm in the zone of this type will be activated siren.

#### "Entrance" zone type

If the type "Entrance" is specified for the zone, such a zone is processed in a special way when arming and disarming.

When arming, the condition of the zone is ignored: the device will be armed even if the zone, configured as an entrance, is in alarm. Besides, the entrance zone state is ignored until the end of the delay on the exit for all zones in partition that are armed. In this case, the delay on the exit for the entrance zone itself can not be set, it always has a delay on the exit equal to the greatest delay on the exit of other zones included in the partition.

If partition, which includes a entrance zone, armed and the entrance zone becomes alarming, it first checks if the countdown of the delay on the entry for the other zone in partition. If there is a countdown delay on the entry, the alarm in the zone is ignored. If there is no delay on the entry, an "Alarm" event (**E130**) will be generated along the zone.

#### "Fire" zone type

When forming an alarm on zones with the "Fire" type, the device uses the "Attention"/"Fire" mechanism: it is based on the logic of repeated operation of the detector after power reset. The device goes into a generalised state of "Fire", which is accompanied by the inclusion of a fire siren, as well as the repetition of fire alarms. This state is stored in the device memory, it means when the power supply is reset or the panel is reset, the generalised state "Fire" is saved.

#### "Panic button without fixation" zone type

If the type "panic button without fixation" is specified for the zone, such zone has its own interval of alarm repetition.

For this type of zone, the alarm repeat interval specified for the instrument is not used. Instead, a value of 5 seconds is set. Thus, repeated pressing of the alarm button not earlier than in 5 seconds will result in transmission of one more event to the alarm monitoring software.

#### "Temperature sensor" zone type

If a wired temperature sensor is connected to the device, and the 1-Wire line polling mode is enabled (enabled on the [Other](#control-indication) tab), it will appear on the "Zones" tab automatically and will have a zone number in the range from 48 to 51. For temperature sensors, the upper and lower thresholds must be specified, upon reaching which alarms will be generated. The range of acceptable values for the thresholds: -55°C to 127°C. Read More [about temperatures sensors connection](#install-temp).
In total, 4 temperature sensors can be connected to the device.

### The normal state of the zone

Using the value which is set in the "Norm" column, you can determine the *normal* state for the alarm zone:

* if the normal state for the zone is defined as *closed*, then detectors also have *closed* contacts of their exit relay in the normal state should be used in such zone. In case of alarm, such detectors should *open* exit relay contacts;
* if the normal condition for the zone is defined as *open*, then detectors which have *open* contacts of their exit relay in the normal state should be used in such zone. In case of alarm, these detectors must *close* the exit relay contacts.

It should be noted that the vast majority of modern infrared and magnetic detectors have *normally closed* contacts of their exit relays. Thus, for zones in which these sensors are included, the normal state must be defined as *closed*.

### Closing resistors

Using the value that is set in the "Resistors" column, you can specify the number of closing resistors installed in the zone.

If the closing resistors are not used when connecting the zone, the device can determine only one of two states: "Alarm" or "Norm" for such a zone. Such a zone is very vulnerable: if the normal state for the zone is determined as *open*, then it is enough to bite the cable of zone in any available place, and the zone will always remain in a normal state, the alarm on such a zone will never be. The zone looks no better, the normal state for which is defined as *closed*: if it is possible to short the signal cables of the zone, then there will never be an alarm on it.

One closing resistor, installed in the zone, allows to distinguish a fault in the zone from the alarm. What kind of fault can be determined-a break or a short circuit-depends on the normal state of the zone: for the normal state of the zone *open* one closing resistor allows to determine the break of the zone, and for the normal state *closed* – short circuit.

Two terminal resistors allow to define both breakage, and short circuit for a zone with any normal condition.

> For *minimal* counteraction to the failure of alarm zone, it is recommended to include one closing resistor in the zones.

### Delay on the entry

The "Delay on the entry" parameter allows to delay the generation of the "Alarm" signal for the time specified as the value for this parameter. Typically, this parameter is set for zones that the user *needs* to break in order to get to the alarm control device. As a common example of such zones can result in magnetic sensors protecting entrance doors in a secure facility.

How does the delay on the entry work? Suppose that we have a zone, it includes a magnetic detector, which is installed on the front door to the office. For this zone, the delay on the entry is set to 15 seconds. Keypad, which you can use to disarm, is inside the office, that is, you need to open the door in order to reach it. The user opens the front door, the magnetic detector is triggered, but the device does not generate an alarm, and begins counting the delay on the entry. If within 15 seconds the user enters the code by means of which the alarm will be disarmed, the alarm will not be generated, instead an event about disarming the device will be sent to the alarm monitoring software. If the device is not disarmed within 15 seconds, an alarm will be generated.

The value of the "Delay on the entry" parameter can be specified only for zones, the type of which is set as "Arm" or "Arm without siren". This is due to the fact that the zones of all other types (except for the "Entrance") can not be armed or disarmed: they are always protected. As for the type of zone "Entrance", the zones of this type are processed when arming or disarming in a special way, as described above, in the section "Types of zones".

#### Event "Probable alarm"

In case of violation of the zone with a delay on the entry device certainly generates an event "Probable alarm" (**E138**). The event arguments are the number of the broken zone and the smallest number of the partition in which this zone is included. If they violated a few zones with a delay on the entry, for each zone an event will be generated "Probable alarm".

At some sites, the control panel cannot be placed in a separate protected part of the room. Usually, such objects include small premises: shopping pavilions, garages, small offices and apartments. This means that the control panel may be disabled during the delay on the entry countdown. The event "Probable alarm" allows the security panel to monitor the operation of the device after the countdown of the delay on the entry begins: if after the start of the delay on the entry there is no event about disarming the device, then this is an occasion to find out what is happening at the facility.

For automatic control of receipt of disarming after the Probable alarm in the "Security Center", you must use the event handler to the "Entrance through alarm" or event handler, "Control of a chain of events".

### Delay on the exit

The purpose of the "Delay on the exit" parameter is very similar to the purpose of the "Delay on the entry" parameter, but it is only intended to enable the user to leave the protected room after he has arm the device. The delay on the exit is usually set for zones that protect the entrance doors to the protected areas.


After the user takes a partition (using the keyboard, wireless keyfob or TM-reader), the device checks the status of all the zones included in the partition:

* if a faulty zone is detected, the device refuses to arming;
* if a zone is detected in the alarm, the device also refuses to arming;
* if there are no faulty or alarming zones, the device is armed and starts c
* counting the delay on the exit, if there is one.

The arming event (**E401**) is generated immediately upon arming, before the start of the delay on the exit, if it exist. The event arguments are the number of the armed partition, and also the number of the user who performed the arming.

After the countdown of the delay on the exit has started, the device ignores the state of all the zones for which the delay on the exit is set, as well as the exit with the "Entrance"type. If the user has time to leave the room and close the front door before the end of the countdown to the delay on the exit, the alarm after the arming will not be. If some of the zones will be broken after the end of the delay on the exit that will be generated the alarm.

For wireless devices for current is taken by the state which was obtained during the latest poll of the device. Therefore, the user of the wireless system may need to wait for the wireless detector to send the device back to normal. If you do not want to wait, you can set the minimum possible delay on the exit for wireless detectors.

It may happen that during the arming it is impossible to achieve the normal state of one or more zones, for example, if the detectors in the zones control the keyboard area. In this case, the zones must be configured as *entrance*. More details of the entrance zone are described above in the Section "Types of zones".

The alarm in zones with a delay on the exit at the time of arming is ignored. This is to ensure that the user does not need to check and close the front door. But, if you want to be sure that all the alarm zones are normal at the time of arming, you can turn on the alarm control in the zones with a delay on the exit on the exit at the time of taking. To do this, you need to put a "check" for the parameter "Prohibit taking when the alarm is in the zone with a delay on the exit", which is located on the "Other" tab, in the "Arming and disarming"section.