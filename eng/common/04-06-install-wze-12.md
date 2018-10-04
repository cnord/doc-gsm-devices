## Connection of Expander "EW-12" {#install-wze-12}

"EW-12" is an expander of the wired zones for the "Nord GSM” control panels, with its help it is possible to increase the number of zones up to 16 or the number of outputs of the "open collector" type.

\imgcapt{img/04-05-wze-12-1.png}{«EW-12»}

**Connection to Device**

The expander is connected to the device via group of terminals "Reader", which is located on the left edge of the device terminals: the "1WR" terminal of the expander is connected to the "DATA" terminal of the device, and the "1WR GND" terminal of the expander is to the "GND" terminal of the device.

\imgcapt{img/04-05-wze-12.png}{Diagram of "EW-12" connection to device}

If the expander is connected correctly, the LED on it shall flash, zones will appear in the configurator automatically on the [Zones](#config-zones) tab.

**Expander Power**

The expander is powered via terminals marked "GND PWR" and "+ 12V".

Power can be supplied in two ways:

* From the device itself, it shall be noted that the maximum load is 200 mA.
* From an uninterruptible power source.


**Connection of Zones to Expander**

Terminals «Z1»-«Z8» are intended for connection of a signal cable of the zones.   
The GND terminals are for connecting the minus power cable of the zones and the second signal cable of the zones.   
The "SNS PWR" terminals are intended for connecting the “plus" power cable to the zones.

As in the device, up to two resistors can be connected to each zone in the expander. Resistor ratings and wiring diagrams are listed in the Connection of Wired Zones section.

Each of terminals "Z1"-"Z8" can be a zone or an open collector output, which is indicated when configuring the control panel:

* If the zone is disabled in the configurator, then it can be used as an open collector.
* If the zone is enabled in the configurator, then it cannot be used as a collector.



