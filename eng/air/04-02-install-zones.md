\pagebreak

## Connection of Wired Zones

The signal cables of the zones are connected to the terminals "Z1" and "Z2".

The common zone cables are connected to the “GND” terminals.

The plus power supply cables of the security zones (12 V) are connected to the "12V” terminals.

### Normally Closed and Normally Open Zone

The normal state of the zone is determined by its detectors:

* if the normal state for the zone is defined as *closed*, then there shall be detectors in this zone. which also have *closed* contacts of their output relay in the normal state. In case of alarm, these detectors shall *open* the contacts of the output relay;
* if the normal state for the zone is defined as *open*, then there shall be detectors in this zone, which have *open* contacts of their output relay in the normal state. In case of alarm, these detectors shall *close* the contacts of the output relay;

It shall be noted that the vast majority of modern infrared and magnetic contact detectors have *normally closed* contacts of their output relay. Thus, for zones with these detectors, the normal state shall be defined as *closed*.

Normally open detectors are connected to the zone in parallel, and normally closed - in series.

One zone can include detectors of only one type: either normally closed, or normally open.

### Wired Zones in Configurator

When configuring the device, it is necessary to explicitly specify the rate for the wired zone, and the number of terminating resistors. It is possible to do this on the “[Zones](#config-zones)” tab.
