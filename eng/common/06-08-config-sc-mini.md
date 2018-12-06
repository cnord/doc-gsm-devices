\pagebreak

## Security Center {#config-sc}

Settings that the device Security Center use when transmitting events via GSM and Ethernet channels can be specified on the “Security Center” tab.

### Device Identification

\imgcapt{img/06-08-config-common-01.png}{“Security Center” tab, “Identification” section}

In the "Identification" section  it is possible to specify the number of the site that will be used when transmitting events from the device. 

> Since the transmission of events from the device to the Security Center software is performed in a protocol that is the information equivalent of the Ademco ContactID protocol, each event, if possible, contains information about the number of the partition in which it occurred, as well as the zone number, which caused the formation of the event, or the number of the user who performed the partition arming or disarming. Thus, when transmitting over GSM or Ethernet, a single site number is sufficient to transmit any event from the device without loss of informativity.

In the "Identification" section, the "Device identifier" field displays the unique eight-digit serial number that the device receives at the production stage. This serial number can be transmitted to the receiver and serve as an alternative to the site number when identifying the device. The “Transmit device identifier to remote program" parameter is used to enable this feature. The possibility to use the serial number of the device instead of the site number is not implemented in the Security Center software: if the serial number is transmitted to the remote program, the serial number will simply be displayed in the site card on the “Equipment" tab.

> If the Security Center version 4 is used as the remote software, then it is impossible to include the transmission of the serial number to the remote program: the device will not be able to connect to the Security Center. 

To ensure that the events from the device are properly handled by the Security Center software, the following conditions shall be met:

* the site number specified when setting up the device shall match the site number created for the device in the Security Center software;
* in the "Site Manager" module, the value “C.Nord GSM (CML)" shall be specified on the “Equipment" tab for this site;
* before the first connection of the device to the Security Center software, make sure that the value in the “ID” field on the “Equipment” tab is not set.

\imgcapt{img/06-08-config-common-02.png}{"Site Manager” module, “Equipment” tab}

### GPRS Transmission Parameters

\imgcapt{img/06-08-config-common-03.png}{“Security Center” tab, "Transfer via TCP/IP (GPRS)" section}

In the "Transfer via  TCP/IP (GPRS)" section it is possible to specify up to two pairs of "address: port", which will be used by the device when connecting to the receiver via GSM/GPRS.

> It is possible to specify both the IP address and the DNS name for the "Address 1" and "Address 2" fields.

When initializing a GPRS connection, the device first tries to connect to the server with the parameters "Address 1:Port 1". If the connection cannot be established, an attempt will be made to connect to the server with the parameters "Address 2:Port 2". In this case, both pairs "address:port" are perceived by the device as equivalent: the differences between them are only in what pair will be used first to initialize the connection. If the device is connected to the receiver using the "Address 2:Port 2" pair, then this connection will not be considered a connection on the backup channel and will be closed only if communication with the receiver using this connection is lost.

Both pairs "address:port" are valid for both SIMs installed in the device: irrespective of which SIM is currently active, the device will first attempt to connect to the receiver with the parameters "Address 1:Port 1", and only if this attempt fails - it will try to connect with the parameters "Address 2:Port 2".

If there is only one TCP/IP address on the receiver, when configuring the device, the values for the parameters "Address 2:Port 2" shall be left blank.

If an optional "Ethernet Adapter" is not connected to the device, the GSM/GPRS channel on SIM1 is considered the *main* for the device.

#### Reception of Events in Security Center

To receive events from the device via TCP/IP (GSM/GPRS and Ethernet) in the Security Center software it is necessary to use the “C.Nord GSM (CML)" event source. This source of events can be added or it can be changed in the "Event manager" module. 

To access the settings of event sources select the "Event sources (services)..." in the module menu that appears after right-clicking on the module icon in the system tray of the taskbar.

\imgcapt{img/06-08-config-common-04.png}{Context menu of "Event manager" module}

To add the event source “C.Nord GSM (CML)" to the service of event sources, click the "Add" button and select the item corresponding to the source in the appeared menu.

\imgcapt{img/06-08-config-common-05.png}{Menu of settings window of event source service}

\imgcapt{img/06-08-config-common-06.png}{Event settings window of “C.Nord GSM (CML)”}

See more information about the parameters of the source of events for “C.Nord GSM (CML)” in the documentation for the Security Center software.

#### IP Address or DNS Name?

As the server address, it is recommended to specify a DNS name, not an IP address, and here’s the reason. As a rule, dedicated IP-address belongs to a specific carrier, which provides access to the Internet and cannot be transferred to a connection that is provided by *another* carrier. As for the DNS name, it belongs to the organization that registered it, for example - to a security company. Besides, the compliance of the DNS name and IP address is also specified by the security company. 

What happens if, for some reason, it is necessary to cancel the contract with the carrier, which gives the security company access to the Internet? If you specify a DNS name for the connection to the receiver, it will be enough to change the entry that specifies the DNS name and IP address. If you specify an IP address, you will have to visit each site to change the address value.

Proceeding from the above, it is strongly *recommended* to use the DNS name, not the IP address.

#### Reception of Events in Security Center

To receive events from the device via the CSD channel in the Security Center software it is necessary to use "GSM Events Source". This source of events can be added or it can be changed in the "Event manager" module. 

Any GSM modem, which command system is compatible with the Siemens MC35 modem can be used as an equipment for receiving events via the CSD channel.


### Transmission Parameters via GSM voice channel

\imgcapt{img/06-08-config-common-09.png}{“Security Center” tab, "Transfer via GSM voice channel”}

In the "Transfer via GSM voice channel” section, it is possible to specify the phone numbers that will be used for dialing to the receiver when transmitting events via the GSM voice channel. The transmission via the voice channel is performed with the help of analog DTMF signals, and Ademco Contact ID is used as an information protocol.

Telephone numbers for voice channel transmission are set separately for each SIM, since a voice call within the communication channel network can be cheaper. 

When transmitting via the voice channel, the device first dials the first number specified for the currently active SIM, and if the transmission of the event fails, then it dials the second one. If there is only one number for voice dialing on the receiver, then the second phone number shall be left blank.

The GSM voice channel is considered active if at least one phone number is specified. If the device does not have to use the voice channel to transmit events, then both telephone numbers shall be empty.

#### Reception of Events in Security Center

To receive events from the device via the GSM voice channel, it is necessary to use the dedicated receiver equipment. As an example of such equipment, we can mention the processor of the central station "Sentinel" manufactured by Pima Electronics or processors of the central station “SG System III”/”SG System IV” manufactured by DSC.

### SMS Transmission Parameters

\imgcapt{img/06-08-config-common-10.png}{“Security Center” tab, “Transfer via SMS" section}

In the “Transfer via SMS" section it is possible to specify the phone numbers that will be used to send events to the receiver via the SMS channel. 

When sending via SMS, the device uses a protocol that allows sending up to 5 events in one SMS message. This protocol is intended solely for transmitting information to the receiver *and cannot be used* to inform users of events on the site.

The phone number for SMS transmission is set separately for each SIM, since sending SMS within the carrier's network can be cheaper.

SMS channel is considered active if a phone number is specified for it. If the device does not have to use the SMS channel to transmit events, the phone number shall be empty.


#### Reception of Events in Security Center

To receive events from the device via the SMS channel in the Security Center software it is necessary to use "GSM Events Source". This source of events can be added or it can be changed in the "Event manager" module. 

Any GSM modem, which command system is compatible with the Siemens MC35 modem can be used as an equipment for receiving events via the SMS channel.

### Communication Channel Switching

To determine the next communication channel, if the current IP channel does not work, the following rule applies:

* if there are no events for transmission, then switching to another IP channel is performed. For example, if GPRS does not work on SIM1, then the device switches to GPRS on SIM2 and vice versa;
* if there are events, then an attempt is made to transmit them via the backup channel on the SIM that is currently active. After the completion of sending events, attempts to connect via IP channels are renewed.

If the transmission via the backup channels to SIM1 failed, then the device will switch to SIM2 and will select channels there. 

If there are no events to transmit, the device will search through the IP channels until the connection is made, or until the event for transmission appears. It is also important that the device can distinguish the situation "GPRS does not work" from the situation "no connection to Security Center". In the first case, switching to another IP channel is performed, in the second case, attempts to connect to the console inside one GPRS session continue. 

\imgcapt{img/06-08-config-common-11.png}{Diagram of communication channel switching}

The order of switching IP channels in the absence of events is shown in the figure with blue dashed lines. Black solid lines show the scheme for switching all configured channels when there are events for transmission.

