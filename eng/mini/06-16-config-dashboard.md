\pagebreak

## State panel

When performing work on the installation of a site, the engineer usually needs to check that the placement and connection of the sensors is correct and there are no malfunctions in their operation.

In the configurator, the “State panel” tab displays the current information on the status of wired zones and the status of communication channels.

\imgcapt{img/06-16-config-dashboard-01-mini.png}{“State panel” tab, communication channels}

### Communication channels

When installing and maintaining the device, it is important to know the current information about the status of communication channels. Use the “State panel" tab to see on which SIM-card and on what communication channel the device is currently operating. 

For each communication channel available in the device settings, its current status is displayed: active/not active, whether there is connection to the Security Center and Cloud, what errors occurred when the channel was initialized, connected to the receiver or transmitted events.

Click the "On" button to force a transition to the communication channel that you want to check. In order for the engineer to make sure that the channel really works, pressing the "On" button generates a test event with the code **E602**, which will be transmitted over the channel if it is successfully initialized.

To the left of the "On" button, the number of events, that have been transferred to the receiver since the last time the channel was active, is displayed.

### Wired zones

For each wired zone that is enabled on the [Zones](#config-zones) tab, its physical state is displayed. For example, if the zone is currently disturbed (in alarm), then the icon with the number corresponding to the zone number will be red. If there is a fault on the zone, this will also be indicated in the state panel. If the zone is disabled in the device settings, then information on it will not be displayed.

\imgcapt{img/06-16-config-dashboard-02.png}{“State panel” tab, Zones in states: norm, alarm, short circuit, break}