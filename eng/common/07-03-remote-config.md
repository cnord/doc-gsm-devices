## Device Remote Configuration

**Important:** Remote configuration is only available for devices that are configured to use IP communication channels – GPRS or Etehernet (if available).

**Important:** The functions described in this section work only if the device is connected to the Security Center software. 

### Selection of Site to Configure

To remotely change the settings in the devices, the tab "Remote access to sites" is located in the engineering panel:

\imgcapt{img/remote-config.png}{}

This tab displays a list of sites that are available to the engineer for configuration at the moment. The list and duration of the permissions are set in the Security Center software.

To configure, click the corresponding site number.

### Working with Configuration

The opened window for setting up the device is similar to the configurator intended for setting up the device connected to the computer, which is described in the "Configuration” section:

\imgcapt{img/remote-config-nord.png}{}

When you open the settings window from the device, its current configuration is read. Then it is possible to make the necessary changes and write them to the device with the corresponding button. After a successful download of the configuration, the message "Settings saved for writing to device" appears on the device.

**Important:** configuration reading and change are only available for devices that are currently connected to the "Cloud". Otherwise an error message will be displayed: "Communicator installed on site is not currently connected to Cloud. Please try to connect to site later."

Note that some configuration fields, for example, addresses to connect to the remote control, cannot be remotely changed. This excludes the possibility of remotely breaking the connection of the device with the receiver and "Cloud".

Actions that require local interaction with the device on the site are also not available, for example, connection of wireless sensors or addition of TM keys.

### Work Features

#### Simultaneous Operation

Although the permissions for configuring one site can be simultaneously issued to several engineers, only one engineer can perform the direct configuration at a time. Access of the remaining engineers to the configuration panel is blocked and when they try to open the site for configuration, a warning is displayed: The site is currently being configured or updated.

#### Priority of Local Configuration

If during the remote configuration by one engineer, another engineer will change the device settings locally using the "desktop" configurator, it will be impossible to apply remote settings - the configuration download error message will be displayed.
