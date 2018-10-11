
## TM-Key

\imgcapt{img/tm-with-key.png}{TM-reader and TM-key}

The device has a built-in interface for connecting the TM-key readers. In addition, the device provides the ability to connect the LED indicator, which is located directly in the case of some models of TM-key readers.

The LED indicator located in the TM-reader case is intended for indication of the TM-key reading, arming and disarming, and also for indicating the device current state.

With a single TM-key it is possible to arm or disarm one partition. If one user has to be able to arm or disarm several partitions at the same time, then the appropriate rules shall be set in the "Automatic controls" section. 

### Reading Indication

If the key reading operation has completed successfully, the device indicates this fact, regardless of whether the key is found in the device memory or not. In other words, if the reading is successful, the device simply confirms that a key has been brought to the reader and this key has been read.

Indication of successful reading of the TM-key: the LED “flashes" (turns on for 0.1 sec., then turns off for 0.1 sec.) for 1 second.

### Error Indication

The following errors are possible during a key reading:

* key is not found in the device memory;
* arming rejection.

Error indication: the LED “flashes” (turns on for 0.5 s, then turns off for 0.5 s.) for 3 seconds.

### Disarming Indication

If the key, with which you can change the partition status and this partition is armed, is read, then the partition is disarmed.

The disarming is indicated after the reading is completed.

Disarming indication: the LED turns on for 5 seconds and turns off.

After the disarming indication is displayed, the standby mode indicator is enabled.

### Arming Indication

If a key, with which it is possible to change the partition status, is read, then if there are no zones in the partition with exit delay, the partition is armed. If there are zones with exit delay, then the delay interval counting starts; arming is performed after the exit delay expires.

The arming indication depends on how many partitions are configured in the device.

#### One Partition

If only one partition is configured in the device, then after it has been armed, the LED turns on and remains lit: the standby mode indicator with the only partition armed is enabled.

#### Several Partitions

If several partitions are configured in the device, then the indication after the current one is armed depends on whether the disarmed partitions remained or not.

If all partitions are armed, the LED turns on and remains lit: the standby mode indicator with several partitions is activated, all partitions are armed.

If there is at least one not armed partition, the LED turns on and is glowing for 20 seconds. After that, the indication of the standby mode with several partitions is enabled, some of which are disarmed.

#### Arming Rejection

"Arming rejection" is the impossibility to arm the site, if the security alarm on the site is faulty, or arming is prohibited due to lack of payment for security services.

There are the following reasons for arming rejection:

* malfunction of one or more zones;
* alarm in one or more zones;
* no communication with the panel program via IP channel;
* absence of 220V on the site;
* no payment for security services;
* the device case is opened.

### Standby Mode Indication

At the time of the reading indication, arming/disarming errors, arming and disarming the indication of the standby mode 
is interrupted.

The standby mode indication depends on how many partitions are configured in the device.

#### One Partition

If only one partition is configured in the device, then the LED indicates the partition status, the presence of an alarm during protection and faulty zones:

* LED is on continuously if the partition is armed;
* LED is not on if the partition is disarmed;
* the LED “flashes” (blink), if there are faults in the zones;
* the LED "flashes", if after the partition was armed, there was an alarm and the partition was not disarmed.

> "Flashing" means that the LED turns on for 1 second, then turns off for 1 second, then turns on again for 1 second, etc.

#### Several Partitions

If several partitions are configured in the device, then only the following is indicated: the entire device arming, presence of an alarm, when the entire device was under protection, and also the zone faults.

* LED is on continuously if all device partitions are armed;
* LED is off if at least one of the partitions is disarmed;
* LED "flashes" if there are faults in the zones;
* the LED "flashes", if after the device was armed, there was an alarm and the alarmed partition was not disarmed.
