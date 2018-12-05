\pagebreak

## Zones {#config-zones}

Use the “Zones" tab to configure the parameters of the wired zones connected to the device.

\imgcapt{img/06-03-config-nord-01.png}{“Zones” tab}

### Zones Numbering

The numbers of zones displayed in the configurator correspond to the marking of the terminals on the printed circuit board: "Z1" - zone No. 1, "Z2" - zone No. 2 and so on.

### Turning Zone On and Off

The on/off button of the zone is in the left column, just behind the zone number. The button color reflects the current status of the zone: if the button is green, the zone is on, if the button is red, then it is off. The inscription on the button corresponds to the operation that will be performed when the button is pressed: the green button says “Disable", because when the button is pressed, the zone is turned off, and the red button says "Enable", because when the red button is pressed, the zone is turned on.

In order for the device to start monitoring the zone condition, and also for the user to configure the zone, it shall be turned on. If the device has at least one *enabled* zone, which is of the type “Arm", “Arm without siren" or “Bypass", then such a zone shall be added to the part.

If the wired zone is *disabled*, its state, as well as the state changes, are ignored by the device. In addition, if the zone is disabled, it cannot be added to the part: it is not displayed in the list of zones available for adding to the part.

The zone disabling can be useful in case it is necessary to temporarily stop the zone monitoring, for example, due to its malfunction. It is possible to disable the zone either when connecting to the device locally (via USB) or when connecting remotely from the web-configurator.

### Zone Type {#config-zones-types}

Setting the type for the zone is a key moment for the zone configuration, since this parameter completely determines the device response to the change in the zone state. The following depends on the zone type: 

* whether the device will react to the zone transition to the "Alarm" state always, or only at the time when the part, into which the zone is included, is armed;
* what event code will be sent to the receiver in case of alarm in the zone;
* whether the siren is activated in case of alarm in the zone;
* whether the power is turned off and on again at the "SMOKE" terminal after an alarm in the zone;
* whether the normal condition of the zone will be monitored while arming the part, into which the zone is included.

\pagebreak

Differences between the types of wired zones are shown in the table below:

\definecolor{light-gray}{gray}{0.7}
\renewcommand{\arraystretch}{1.4}
\newcolumntype{Y}{>{\raggedright\arraybackslash}X}
\begin{tabularx}{\textwidth}{llccY}
\toprule
\textbf{Zone type} & \textbf{Event codes} & \textbf{Arming/disarming} & \textbf{Siren} & \textbf{Note} \\
\midrule
Arm & E130 / R130 & Yes & Yes \\
\arrayrulecolor{light-gray}\hline
Arm without siren & E146 / R146 &  Yes & No \\
\arrayrulecolor{light-gray}\hline
Bypass & E130 / R130 & Yes & Yes & Zone alarm is specially handled during arming and disarming (see below). \\
\arrayrulecolor{light-gray}\hline
Fire & E110 / R110 & No & Yes & Zone alarm is accompanied by power reset of fire sensors (see below). \\
\arrayrulecolor{light-gray}\hline
Panic button with fixation & E120 / R120 & No & No \\
\arrayrulecolor{light-gray}\hline
Panic button without fixation & E120 / R120 & No & No & Separate alarm repetition interval is used for the zone of this type (see below).  \\
\arrayrulecolor{light-gray}\hline
Sensor tamper & E144 / R144 & No & Yes \\
\arrayrulecolor{light-gray}\hline
24-hour arm & E133 / R133 & No & Yes \\
\arrayrulecolor{light-gray}\hline
24-hour & E150 / R150 & No & Yes \\
\arrayrulecolor{light-gray}\hline
Water leak & E154 / R154 & No & Yes \\
\arrayrulecolor{light-gray}\hline
Gas leak & E151 / R151 & No & Yes \\
\arrayrulecolor{light-gray}\hline
Temperature sensor & E158 / R158 & No & Yes & High temperature \\
\arrayrulecolor{light-gray}\hline
Temperature sensor & E159 / R159 & No & Yes & Low temperature \\
\bottomrule
\end{tabularx}
\captionof*{table}{Wired zone types}

If "Yes" is specified in the “Arming/disarming" column for the zone type, it means that this type of zone can be armed or disarmed together with any of the part, into which it is included. If "No" is specified in the “Arming/disarming" column for the zone type, it means that this type of zone is *always* armed.   
If "Yes" is specified in the “Siren" column for the zone type, it means that in case of an alarm in a zone, the horn will be activated.

#### ”Bypass” Zone Type

If the zone type is set to “Bypass", then this zone is specially handled during arming and disarming.

When arming the bypass zone state is ignored: the device will be armed even if the zone configured as bypass is in alarm. In addition, the bypass zone state is ignored until the exit delay ends for all the zones of the part being armed. In this case, the exit delay for the zone itself cannot be set, it always has an exit delay equal to the largest exit delay of the other zones included in the part.

If the part, into which the bypass zone is included, is armed and the bypass zone becomes alarming, then first the check is made to see if the entry delay count for another part zone has started. If the entry delay count is in process, the alarm in the bypass zone is ignored. If there is no entry delay, the "Alarm" (**E130**) event will be generated for the bypass zone.

#### ”Fire” Zone Type

When generating an alarm on zones with the "Fire” type, the device uses the "Warning"/"Fire" mechanism: it is based on the logic of the detector's repeated operation after a power reset. The device switches to the generalized "Fire” state, which is accompanied by fire siren, as well as the repetition of fire alarms. This state is stored in the device memory, i.e. when the power or panel is reset, the generalized "Fire” state is saved.

#### ”Panic button without fixation” Zone Type

If the zone type is “Panic button without fixation", then such a zone has its own interval of alarm repeat. 

The alarm repeat interval set for the device is not used for this type of zone. Instead, it is set to a value of 5 seconds. Thus, pressing the panic button again not earlier than after 5 seconds will result in the transition of another event to the panel.

#### "Temperature Sensor" Zone Type

If a wired temperature sensor is connected to the device, and the 1-Wire line polling mode is enabled (enabled on the [Miscellaneous](#control-indication) tab), it will appear automatically in the "Zones" tab and will have a zone number in the range from 48 to 51. For temperature sensors, the upper and lower thresholds shall be specified, at which alarms will be generated. Range of permissible values for thresholds: from -55°C to 127°C. Read more [about connecting temperature sensors](#install-temp).
A total of 4 temperature sensors can be connected to the device.


### Zone Normal State

Using the value that is set in the "Norm" column, it is possible to define *normal* state for the alarm zone:

* if the normal state for the zone is defined as *closed*, then there shall be detectors in this zone. which also have *closed* contacts of their output relay in the normal state. In case of alarm, these detectors shall *open* the contacts of the output relay;
* if the normal state for the zone is defined as *open*, then there shall be detectors in this zone, which have *open* contacts of their output relay in the normal state. In case of alarm, these detectors shall *close* the contacts of the output relay;

It shall be noted that the vast majority of modern infrared and magnetic contact detectors have *normally closed* contacts of their output relay. Thus, for zones with these detectors, the normal state shall be defined as *closed*.

### Terminating Resistors

Using the value, which is set in the "Resistors" column, it is possible to specify the number of terminating resistors installed in the zone.

If the terminating resistors are not used when connecting the zone, then for this zone the device can determine only one of two states: "Alarm" or "Norm". This zone is very vulnerable: if the normal state for the zone is defined as *open*, then it is very simple to cut the zone cable in any accessible location, and the zone will remain in the normal state forever, there will never be any alarms on such a zone. The zone, which normal state is defined as *closed*, does not look any better: if one can short-circuit the signal cables of the zone, then there will never be any alarms on it.

One terminating resistor, installed in the zone, allows to distinguish the failure in the zone from the alarm. What kind of fault can be detected - break or short circuit - depends on the normal state of the zone: for the zone *open* normal state, one terminating resistor allows to determine the zone break, and for the *closed* normal state – short circuit.

Two terminating resistors allow to determine both break and short circuit for a zone with any normal state.

> For *minimal* counteraction against the alarm zone disabling, it is recommended to include one terminating resistor in the zones.

### Entry Delay

The "Entry delay" parameter will allow delaying the generation of the "Alarm" signal for the time, which is indicated as the value for this parameter. Typically, this parameter is set for zones that the user *shall* violate to get to the alarm management device. As common examples of such zones, one can mention magnetic contact detectors that protect entrance doors to a guarded room.

How does the entry delay work? Suppose that we have a zone, it includes a magnetic contact detector, which is installed on the entrance door to the office. For this zone, an entry delay of 15 seconds is specified. The codebook, with which it is possible to disarm it, is inside the office, that is, it is necessary to open the front door to get to it. The user opens the entrance door, the magnetic contact detector is triggered, but the device does not generate an alarm, but starts counting the entry delay. If within 15 seconds the user enters the code with which the alarm will be disarmed, the alarm will not be generated, instead of it an event will be sent to the security panel to disarm the device. If the device is not disarmed within 15 seconds, an alarm will be generated.

The value of the "Entry delay" parameter can be specified only for zones of the type specified as “Arm" or “Arm without siren". This is due to the fact that zones of all other types (with the exception of “Bypass") cannot be armed or disarmed: they are always armed. As for the “Bypass” zone, the zones of this type are handled during arming or disarming in a special way, as described above, in the section "Zone Types".

#### "Probable Alarm” Event

If the zone with entry delay is violated, the device certainly generates the "Probable alarm" event (** E138 **). The number of the violated zone and the smallest number of the part, into which this zone is included, are transmitted as the event arguments. If several zones with entry delay are violated, an event "Probable alarm" will be generated for each zone.

On some sites, the control panel cannot be placed so that it is located in a separately guarded part of the room. Typically, these sites can include small rooms: shopping pavilions, garages, small offices and apartments. This means that during the entry delay countdown, the control panel can be disabled. The "Probable alarm" event allows the security panel to monitor the device operability after the entry delay countdown begins: if there is no event after the start of the entry delay, when the device is disarmed, it is an occasion to find out what is happening at the site.

To automatically monitor the reception of a disarming after a possible alarm in the Security Center, it is necessary to use the “Alarm entering" event handler or the "Event chain monitor" event handler. 

### Exit Delay

The purpose of the "Exit delay" parameter is very similar to that of the "Entry delay" parameter, but it is intended to allow the user to exit the guarded premises after he/she performed the arming. As a rule, the exit delay is set for zones that protect the entrance doors to the protected premises.

After the user arms the part (using the keyboard, wireless controller or TM reader), the device checks the status of all zones included in the part:

* if a faulty cable is detected, the device refuses to arm;
* if the alarm zone is detected, the device also refuses to arm;
* if there are no faulty or alarm zones, the device is armed and the exit delay counts, if any.

The arming event (**E401**) is generated immediately during arming, before the exit delay starts, if any. The number of the protected part and the number of the user, who performed the arming, are transmitted as arguments of the event.

After the exit delay countdown starts, the device ignores the status of all zones for which an exit delay is specified, as well as zones with a “Bypass" type. If the user has time to leave the premises and close the entrance door before the exit delay countdown has expired, then there will be no alarm after arming. If any of the zones are violated after the exit delay ends, an alarm will be generated.

For wireless devices, the state that was received during the last poll of the device is taken as current. Thus, the user of the wireless system may need to wait until the wireless detector sends a normal state to the device. In case you do not want to wait, it is possible to set the minimum possible delay for the wireless detectors.

It may happen that during the arming it is impossible to achieve the normal state of one or several zones, for example, if the detectors in the zones monitor the keyboard area. In this case, the zones shall be configured as *bypass*. The bypass zones are described in more detail above, in the section "Zone Types".

An alarm in the zones with exit delay at the time of arming is ignored. This is done so that the user does not have to check and close the front door. But, if you want to be sure that all alarm zones are normal at the time of arming, it is possible to turn on alarm monitoring in zones with exit delay at the time of arming. To do this, check the parameter “Disable arming when triggering the alarm in zones with exit delay” in the "Miscellaneous" tab, in the “Arm and disarm" section. 

