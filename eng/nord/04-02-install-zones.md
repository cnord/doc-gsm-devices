\pagebreak

## Connection of Wired Zones

The signal cables of the zones are connected to the terminals "Z1"-"Z8".

The common zone cables are connected to the “GND” terminals.

The plus power supply cables of the security zones (12 V) are connected to the "PWR” terminals.

The plus power supply cables of the fire zones (12 V) are connected to the "SMOKE” terminal.

### Normally Closed and Normally Open Zone

The normal state of the zone is determined by its detectors:

* if the normal state for the zone is defined as *closed*, then there shall be detectors in this zone. which also have *closed* contacts of their output relay in the normal state. In case of alarm, these detectors shall *open* the contacts of the output relay;
* if the normal state for the zone is defined as *open*, then there shall be detectors in this zone, which have *open* contacts of their output relay in the normal state. In case of alarm, these detectors shall *close* the contacts of the output relay;

It shall be noted that the vast majority of modern infrared and magnetic contact detectors have *normally closed* contacts of their output relay. Thus, for zones with these detectors, the normal state shall be defined as *closed*.

Normally open detectors are connected to the zone in parallel, and normally closed - in series.

One zone can include detectors of only one type: either normally closed, or normally open.

### Terminating Resistors

If the terminating resistors are not used when connecting the zone, then for this zone the device can determine only one of two states: "Alarm" or "Norm". This zone is very vulnerable: if the normal state for the zone is defined as *open*, then it is very simple to cut the zone cable in any accessible location, and the zone will remain in the normal state forever, there will never be any alarms on such a zone. The zone, which normal state is defined as *closed*, does not look any better: if one can short-circuit the signal cables of the zone, then there will never be any alarms on it.

One terminating resistor, installed in the zone, allows to distinguish the failure in the zone from the alarm. What kind of fault can be detected - break or short circuit - depends on the normal state of the zone: for the zone *open* normal state, one terminating resistor allows to determine the zone break, and for the *closed* normal state – short circuit.

Two terminating resistors allow to determine both break and short circuit for a zone with any normal state.

> For *minimum* counteraction against the alarm zone disabling, it is recommended to include at least one terminating resistor in the zones.

### Zone without Terminating Resistors

\imgcapt{img/04-02-v51-52-no-resitor-normal-open.png}{Normally open zone}

\imgcapt{img/04-02-v51-52-no-resitor-normal-close.png}{Normally closed zone}

### Zone with One Terminating Resistor

\imgcapt{img/04-02-v52-one-resitor-normal-open.png}{Normally open zone}

\imgcapt{img/04-02-v52-one-resitor-normal-close.png}{Normally closed zone}

### Zone with Two Terminating Resistors

\imgcapt{img/04-02-v52-two-resitor-normal-open.png}{Normally open zone}

\imgcapt{img/04-02-v52-two-resitor-normal-close.png}{Normally closed zone}

### Wired Zones in Configurator

When configuring the device, it is necessary to explicitly specify the rate for the wired zone, and the number of terminating resistors. It is possible to do this on the “[Zones](#config-zones)” tab.
