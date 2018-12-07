### Intervals

\imgcapt{img/06-07-config-nord-01.png}{“Miscellaneous” tab, “Intervals” section}

**Interval for repeating alarms**  

Use the “Interval for repeating alarms" parameter to specify the interval with which the device will generate *similar* alarms and transmit them to the receiver. The alarms are considered *similar* if they are originated in the same wired zone.

The value of the “Interval for repeating alarms" parameter is used for zones of all [types](# config-zones-types), with the exception of zones of the "Fire" and “Panic button without fixation” type. The alarm repetition interval for zones with the “Panic button without fixation” type is always 5 seconds, and the alarm repetition interval for zones of the "Fire" type is set by a separate parameter (see below).

> Why is this parameter necessary? First of all, to reduce the number of events that will be transmitted to the repeater: one alarm event can be quite enough for the operator to start handling the site alarm. Repeated alarm on the same zone, as a rule, will not change anything. If the device detects an alarm in another zone, then such an alarm will be transmitted to the repeater and a countdown of its own alarm repetition interval will begin for this zone.

If the “Interval for repeating alarms" parameter is set to any numerical value, the device will generate events on a specific zone as follows:

* if an alarm is detected in the zone, an alarm event will be generated and the count of the specified interval will start;
* if an alarm reset is detected in the zone, a reset event will be generated, the count of the specified interval will be continued;
* in case of repeated alarm generation or reset in the zone, events will not be generated until the count of the specified interval is completed.

> Numerical value means that only one alarm and one zone reset will be transmitted during the interval.

If the “Interval for repeating alarms" parameter is set to “Do not repeat” value, the device will generate events on a specific zone as follows:

* if an alarm is detected in the zone, an alarm event will be generated and the waiting of the zone alarm reset start;
* repeated events about the alarm in the zone *will not* be generated until an event about the alarm reset is generated on the zone;
* if an alarm reset is detected in the zone, a reset event will be generated, the alarm reset waiting in the zone will be terminated, the device will generate an alarm event in the zone again when it is detected.

> The "Do not repeat" value means that a repeated zone alarm can only be transmitted after a reset of the previous alarm is transmitted on the zone.

The “Interval for repeating alarms” parameter does not relate to the alarms that are generated when the device tamper is triggered. Events about breaking or restoring a tamper are always generated after the tamper state changes.


**Interval for repeating fire alarms**

The "Interval for repeating fire alarms" parameter specifies the interval with which the device will generate *similar* alarms on zones of the "Fire” type, and transmit them to the receiver. The alarms are considered *similar* if they are originated in the same wired zone.

The interval of fire alarm repetition is on the one hand designed to reduce the number of identical events that will be transmitted to the receiver, and on the other hand, to prevent a situation in which the personnel of the receiver will not pay attention to the fact that the device at the site is in the generalized "Fire” state: if [automatic reset of the generalized "Fire” state](# config-fire-alarm-auto-reset) is prohibited, then to reset it, it is necessary to type the code on the keypad.

The value of the "Interval for repeating fire alarms" parameter is applied as follows:

* if a fire alarm is detected, “Fire” event will be generated in the zone, the device will switch to the “Fire” state and the count of the specified interval will start;
* upon completion of the specified interval, the "Fire" event will be generated repeatedly on all zones along which it was generated during the interval counting. After that, the interval count will start again;
* if the generalized "Fire” state is reset, the interval count will be completed.
  

**Interval for repeating troubles**

The "Interval for repeating troubles" parameter specifies the interval with which the device will generate *similar* troubles on zones, connected to the device. The alarms are considered *similar* if they are originated in the same wired zone. In this case, in contrast to the repetition intervals of repetition of security or fire alarms, the interval for repeating faults *stops*, if a recovery of the fault is detected and an event about it is generated.

For the wired zones, faults that are covered by the "Interval for repeating troubles" include the physical faults of the zone – a break and short circuit. These faults are only generated if one or two terminating resistors are connected to the zone.

If a type is specified for a wired zone, which implies arming, the event codes that are generated in case of faults/recoveries in such a zone will depend on the state (armed or disarmed) in which the zone was at the time of the fault detection:

* codes **E331** / **R331** will be generated if a break/recovery is detected for the zone, which is *disarmed*;
* codes **E141** / **R141** will be generated if a break/recovery is detected for the zone, which is *armed*;
* codes **E332** / **R332** will be generated if a short circuit/recovery is detected for the zone, which is *disarmed*;
* codes **E142** / **R142** will be generated if a short circuit/recovery is detected for the zone, which is *armed*;

Despite the fact that the codes **E141** and **E142** are considered alarms, the fault repetition intervals, rather that alarm repetition intervals, are used for the events with these codes.

The value of the “Interval for repeating troubles" parameter does not cover the following events about the faults that are generated by the device:

* discharge of the backup battery connected to the device. The event about the backup battery discharge (code **E302**) is formed once and repeated only when the device is turned on;
* malfunction of the backup battery connected to the device. The event about the backup battery failure (code **E309**) is formed every 12 hours, based on the results of each quality test of the backup battery;


**Interval for switching to the main channel**

With the "Interval for switching to the main channel” parameter, it is possible to set the interval over which the device will attempt to initialize the connection to the repeater via the main IP channel. The main communication channel is the GPRS channel on SIM1.

For more details about the configuration of IP channels, as well as the rules for switching channels, see the description of the [“Security Center” tab](# config-sc).

It shall be noted that it is possible to specify "Do not switch” as the value for the "Interval for switching to the main channel" parameter. In this case, the forced switching to the main communication channel will be disabled. This feature allows to use "equivalent" SIMs - if the device is connected via GPRS on SIM2, it will remain on this channel until the channel is operational.


**Test transfer interval** 

Use the "Test transfer interval" parameter to specify the interval with which the device will generate a test event and transfer it over the currently available communication channel. It is important to understand that this interval is always counted from the last event that was transmitted by the device. If there are no events for transfer at the expiration of the interval, a test event will be generated and transferred.
If this parameter is set to "Do not transfer", then the device will not generate test events (code **E602**). 


**Interval for event transfer control**

Use the "Interval for event transfer control" parameter to specify the interval during which the audit system is waiting for the event to be sent. The *audit system* is a program mechanism that controls the fact of the event transfer to the receiver.

If the "Interval for event transfer control" parameter is set to any numerical value, the device will work as follows:

* If the audit system registers the absence of the event transfer within the time interval specified by the parameter, then first the communication channel, which is currently used by the device, is switched;
* At the moment when the audit system has switched the communication channel, an event with the code **E754** is generated. The argument for the event with code E754 is the type of communication channel that stopped the event transfer (1 – GSM, 3 – radio). The argument value is transferred to the field assigned to the zone or user number.

* If the channel switching does not help, and events are still not transferred, then the audit system reboots the device after the expiry of the event transfer control interval.
* After the reboot, two events will be generated. The code of the first event is **R305**, this event registers the very fact of the device reboot. The second event code is **R754**, this event means that the reboot occurred by the audit system command.

The default value for this parameter is 7 minutes. If necessary, the value can be increased. If "Do not monitor" is specified for this parameter, the audit system will be disabled. 


