\pagebreak

# Remote Access to Device {#remote-access}

## Description of Remote Access Technology

Remote access to the device includes the following functions:

* Remote software update on site
* Remote configuration of the site
* Remote arming and disarming of the site by the user
* Remote arming and disarming of the site by the receiver operator
* Payment status management

All the above functions require a compatible remote software, for example, "Security Center". In addition, to operate the functions of remote firmware update, configuration and arming/ disarming by the user, it is necessary to connect the device to the “Cloud” (C.Nord public cloud - `cloud.cnord.net` - or the private Cloud of the security organization).

The connection diagram is as follows:

\imgcapt{img/remote-intro.png}{}


The device connects both to the alarm monitoring software and to the "Cloud" via CML protocol using streaming encryption *(CML protocol - C.Nord Markup Language - developed by C.Nord company)*. The alarm monitoring software is also connected to the "Cloud" via the encrypted protocol.

### Communication Channel Device ⟷ Receiver

This communication channel is used to operate the device security functions, such as:

* Transmission of events (alarm/arming/disarming/failure) to the receiver software
* Remote arming and disarming of the site by the receiver operator
* Payment status management

In the general case, the device connects to the receiver through a public network (Internet). However, some security companies use the allocated internal subnets of GSM carriers or Ethernet LANs for communication 'device ⟷ receiver'.

To transmit events to the receiver, various communication channels can be used: Ethernet, GPRS, CSD, Voice, SMS.

** Important:** remote arming/disarming and payment status management work only when the device is connected via IP communication channel: Ethernet or GPRS.

### Communication Channel Device ⟷ "Cloud"

This communication channel is used for the device service functions, such as:

* Remote software update on site
* Remote configuration of the site
* Remote arming and disarming of the site by the user

In case of using the public "Cloud" the device connects to the "Cloud" via the Internet. If the Private Cloud is used, it is possible to connect through dedicated internal subnets of GSM carriers or local Ethernet networks.

To operate all service functions, the device shall have IP connection with the "Cloud" via Ethernet or GPRS.

** Important:** Possible interruptions in connection of ‘device ⟷ "Cloud"’ do not affect the security functions of the device in any way.

### Communication Channel Receiver ⟷ "Cloud"

This communication channel is used to ensure the operation of the device service functions.

** The alarm monitoring software transmits the following to the "Cloud":**

* information about engineers and their permissions  
  * for the engineering panel operation*
  
* information about administrators of the personal account and their sites  
  * for operation of the personal account `my.cnord.net` and the `MyAlarm` mobile application*
  
* events by sites  
  * for operation of the personal account and mobile applications*
  
**"Cloud" transmits the following to the alarm monitoring software:**

* events about engineer’s attempts to connect to a site  
  * for the engineering panel operation*
  
* events about attempts to arm/disarm from the `MyAlarm` mobile application  
  *for the mobile application operation*
  
* events about checking the panic button using the `Call-center`  
  * for automatic check of the panic button*
  
In case of using the public "Cloud" the alarm monitoring software connects to the "Cloud" via the Internet. If Private Cloud is used, it is possible to connect using Ethernet LANs.

** Important:** Possible interruptions in connection of ‘receiver ⟷ "Cloud"’ do not affect the security functions of the device in any way.

