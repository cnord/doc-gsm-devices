\pagebreak

## Zones {#config-zones}

Use the “Zones" tab to configure the parameters of the wired zones connected to the device.

\imgcapt{img/06-03-config-nord-01.png}{“Zones” tab}

### Expanders

Without the use of additional equipment, up to 8 wired zones can be connected to the "Nord GSM" device. If the EW-8 or EW12 expander of wired zones is used, the number of wired zones can be increased to 16.

**EW-8** 

If the EW-8 expander is connected to the device, it is necessary to set check the “EW-8 expander connected” parameter, then the polling mechanism of the wired zones is changed, and the total number of loops on the tab is increased to 16. 

The connection diagram of the expander to the device and the wiring diagrams of the zones to the expander are given in section [“Connection of EW-8 Expander"](#install-wze-8).

**EW-12**    

If the expander EW-12 is connected to the device, additional zones will appear automatically in the configurator.
Operation details and connection diagram of the expander to the device are given in section [“Connection of EW-12 Expander”](#install-wze-12).

EW-12 cannot be connected together with EW-8.

### Zones Numbering

The numbers of zones displayed in the configurator correspond to the marking of the terminals on the printed circuit board: "Z1" - zone No. 1, "Z2" - zone No. 2 and so on.

If the expander EW-12 is connected to the device, the expander zones correspond to the numbers 9-16, that is, the "Z1" terminal on the expander corresponds to the zone No. 9 in the configurator, the "Z2" terminal to the zone No. 10, (...), the "ZN" terminal corresponds to a zone (N + 8).

If the expander EW-8 is connected to the device, the terminal "Z1" is intended for connection of signal cables from zones No. 1 and No. 9, terminal "Z2" - for cables from zones No. 2 and No. 10 and so on. In other words, the N terminal is intended to connect the cables from the "N" and "N + 8" zones.
