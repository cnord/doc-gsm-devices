## Control Panel and Tab Panel

## Control Panel

The control panel is located at the top of the configurator main window:

\imgcapt{img/06-02-config-air-01.png}{Control panel}

The following information is displayed on the left side of the control panel:

* device type;
* device software version;
* site number, specified in the device settings;
* device serial number.
The serial number of the device is assigned to it during production and is unique for the entire population of devices manufactured by the C.Nord company.

The "Read" button is designed to load the settings, that are currently stored in the device, into the configurator interface. It shall be remembered that if you make any changes in the device settings in the configurator, and then click on the "Read" button, all changes will be lost: the settings that were made in the configurator will be replaced with the settings loaded from the device.

The “Record" button is needed to save the configuration changes made in the configurator to the device.

The "Save..." button is designed to save the current settings to the file, which are displayed in the configurator. Use the "Open..." button to load the settings from the file. 

> To avoid errors related to setting up communication channels, it is recommended to save all settings related to connection to the Security Center and Cloud to the file on the disk, and begin to configure the device installed on the site with loading the file with these settings to the configurator.

\pagebreak

### Tab Panel

\begin{wrapfigure}{L}{0.25\textwidth}
\begin{center}
\includegraphics{img/06-02-config-air-02.png}
\end{center}
\vspace{-5pt}
\caption{Tab panel}
\end{wrapfigure}

In the left part of the main window of the configurator there is a tab panel, with which it is possible to switch between groups of device settings.

On the "Zones" tab, the parameters of the wired zones connected to the device are configured.

The "Partitions" tab configures the partitions of the site. On this tab it is possible to specify in which partitions which wired zones are included, and in addition, specify which users can arm or disarm the partitions.

On the "Miscellaneous" tab, it is possible to set the intervals that are used when repeating the events sent to the Security Center, specify the type of backup power source connected to the device, turn on or off the sound and light indicator, etc.

Settings that the device shall use when transmitting events via GSM and Ethernet communication channels can be specified on the “Security Center” tab.

Parameters that determine the transmission of events over a radio channel are specified on the “Radio” tab.

The "Cloud" tab is intended to indicate to which Cloud the device shall be connected in order for the engineer to have a remote access to it. The parameter values on this tab shall only be changed if you are using Private Cloud, or it is necessary to specify the parameters for connecting to the Cloud manually.

On the "Ethernet" tab, it is possible to change the device connection settings to the local network. This tab is displayed in the configurator only if an optional Ethernet Adapter module is connected to the device.

The parameters of cellular operators, such as the access point name (APN), user name and password for access to packet data services, can be changed on the "GSM Operators" tab.

The “Automatic controls” tab is intended for programming the device behavior depending on various conditions. Any events formed by the device or time can act as the conditions. Arming or disarming and actions with open collectors are actions that the device can perform.

Events that are stored in the device non-volatile memory can be viewed on the "Event history" tab. Here it is possible to mark, as posted, the events that are waiting for delivery to the Security Center in the transmission queue.

The “State panel" tab displays the status of communication channels and wired zones in real time.

