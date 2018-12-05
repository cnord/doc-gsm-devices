\pagebreak

## State panel

When performing work on the installation of a site, the engineer usually needs to check that the placement and connection of the sensors is correct and there are no malfunctions in their operation.

In the configurator, the “State panel” tab displays the current information on the status of wired zones, wireless devices connected to the device, and the status of communication channels.

\imgcapt{img/06-16-config-dashboard-01.png}{“State panel” tab, communication channels}

### Communication channels

When installing and maintaining the device, it is important to know the current information about the status of communication channels. Use the “State panel" tab to see on which SIM-card and on what communication channel the device is currently operating. 

For each communication channel available in the device settings, its current status is displayed: active/not active, whether there is connection to the Security Center and Cloud, what errors occurred when the channel was initialized, connected to the receiver or transmitted events.

Click the "On" button to force a transition to the communication channel that you want to check. In order for the engineer to make sure that the channel really works, pressing the "On" button generates a test event with the code **E602**, which will be transmitted over the channel if it is successfully initialized.

To the left of the "On" button, the number of events, that have been transferred to the receiver since the last time the channel was active, is displayed.

### Wired zones

For each wired zone that is enabled on the [Zones](#config-zones) tab, its physical state is displayed. For example, if the zone is currently disturbed (in alarm), then the icon with the number corresponding to the zone number will be red. If there is a fault on the zone, this will also be indicated in the state panel. If the zone is disabled in the device settings, then information on it will not be displayed.

\imgcapt{img/06-16-config-dashboard-02.png}{“State panel” tab, Zones in states: norm, alarm, short circuit, break}


### Wireless devices

For wireless devices, the following information is displayed in the “State panel”:

* Evaluation of the communication quality;
* Current status of the device.


\imgcapt{img/06-16-config-dashboard-03.png}{“State panel” tab, at the top - icons of wireless devices, at the bottom - detailed information}


#### Device status

The “Wireless devices” tab displays information about all wireless devices recorded in the device configuration.

If the device is in alarm, the entire icon will be colored red, and if there is any malfunction, this will be indicated at the bottom of the icon.
By clicking on the wireless device icon, it is possible to get more detailed information about its status.

#### Evaluation of wireless device signal quality

The wireless expander connected to the device performs evaluation of the signal quality of each wireless device. The communication quality indicator is a circle around the number and name of the device. 

The color and filling of the circle corresponds to the signal-to-noise ratio measured by the radio module in the signal received from the wireless device:

* Excellent - green, the circle is completely filled;
* Good - yellow, the ring is partially filled;
* Bad - red, ring partially filled;
* No connection - red, ring completely filled. 

