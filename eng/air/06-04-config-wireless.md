\pagebreak

## Wireless Devices

Use the "Wireless devices" tab to record wireless devices and their parameters, such as type, entry delay, exit delay, etc.
All wireless devices are connected to the "Nord GSM Air" device via the CN-WRL expander. The expander supports connection of 31 devices. The entire list of devices is on the [site] (https://shop.cnord.ru/sn.html).

### Connection of New Device

\imgcapt{img/06-04-config-nord-02.png}{Device adding, «Wireless devices» tab}

#### Most of Devices

To connect devices CN-PIR, CN-PIR-Outdoor, CN-PIR-Mini, CN-Magnetic, CN-Magnetic-Mini, CN-Glass, CN-Fire, CN-Flood, CN-Flood-Mini, CN-Celsius , CN-Keypad, CN-Repeat, CN-Repeat 220, CN-Exit, CN-Smoke it is necessary to:

* Remove the device cover;
* Install the batteries;
* Click the button "Add Wireless Device_” on the "Wireless devices" tab of the configurator;
* Switch the wireless device to the connection mode by briefly closing the "Reset" contacts.

The green device LED will confirm the transition to the connection mode.
If the red indicator is on for 2 seconds, it means the successful completion of the device connection.

#### CN-Siren

To connect devices such as "CN-Siren" and “CN-Smoke" it is necessary to:

* Remove the front cover, install the batteries;
* Click the button "Add Wireless Device_” on the "Wireless devices" tab of the configurator;
* Switch the wireless device to the connection mode by closing the “minus" contact of the battery holder and contact "4" on the siren base.

If the red indicator is on for 2 seconds, it means the successful connection.

#### CN-KeyFob

To connect the CN-KeyFob to the device it is necessary to:

* Open the keyfob case, insert the battery into the holder, close the case;
* Click the button "Add Wireless Device_” on the "Wireless devices" tab of the configurator;
* Press and release any key on the keyfob. The device will periodically turn on the green indicator, indicating that it is in the “Connection" mode. If there is no such indication, press and hold all three buttons simultaneously for 2 seconds or more, and the indicator shall turn green. Hold the buttons until the indicator turns red.

> If the keyfob will serve as a panic button, then after the connection it is necessary to check “Panic button enabled".

### Repeater

“CN-Repeater" and “CN-Repeater 220" are repeaters designed to increase the wireless device range.

After at least one repeater is connected to the device, on the "Wireless devices" tab in the column “Via repeater" for each device it will be possible to select how it shall transmit signals to the device: directly or via the specified repeater.

\imgcapt{img/06-04-config-nord-01.png}{Wireless devices are configured for operation via repeater}

> Note that the connection of any device is always performed directly to the device. After the connection is completed, it is possible to switch the device to sending signals via the repeater.

A chain of repeaters cannot be built: there can be only one repeater between the device and wireless device.

The algorithm of the wireless devices is implemented in such a way that if the repeater fails, and the device “listens” to the device without a repeater, then the signals from such devices will be received without a repeater.

### Assembly Instructions

1. Install the panel in such a place that there are no metal or other shielding structures in the area of direct radio visibility towards the intended installation sites of the detectors. For example, there may be a ventilation duct behind the wall from the installation site of the panel that prevents the passage of the signal;
2. To slightly improve the parameters of the radio path, it is possible to straighten the antenna of the CN-WRL expander and take it out of the panel case;
3. Check the installation locations of the sensors at the same position of doors/windows/gates/nets that are relevant at the time of protection - usually closed;
4. There shall be no metal structures at the base of the wall (metal profile/fittings) in the proposed location of the sensor.
5. When selecting the installation site, it is necessary to determine the quality of communication between the wireless device and the Nord device. There are two ways to do this:
	* On the side of the wireless device:    
Press and hold the device tamper for 3 seconds. If the green LED flashes more than once, the communication quality is good. If the red LED turns on, it is necessary to change the installation location of the device.
	* On the device side:
After recording the configuration, open the “State Panel" tab - "Wireless Devices” in the "Hubble". If the connection quality is marked as "bad" for the selected device, then it is recommended to change the supposed installation location of the device or use the repeater “CN-Repeater".
