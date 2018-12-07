\pagebreak

## Connection of Touch Memory Reader

The device has a built-in interface for connecting the TM-key readers. It is possible to can add up to 32 TM keys to the device.

Touch Memory reader is connected to the device to LED, DATA and GND terminals of the "Reader" group.

\imgcapt{img/04-09-install-tm-air.png}{Touch Memory card reader connection diagram}

Instead of the TM-reader, it is possible to connect any reader with the Dallas Touch Memory protocol emulation (DS1990A). For example, Proximity-readers ("PS-01", "CP-Z2B").

It shall be taken into account that to connect some readers that emulate the DS1990A protocol, it is necessary to disable the mode of constant polling of the 1-Wire interface, which is enabled by default. To do this, go to the [Miscellaneous](#control-indication) tab in the configurator and uncheck the "Enable constant polling of the 1-Wire interface" option.
