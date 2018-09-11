### Configuration protection

This section is used to configure parameters to protect against unauthorized access and malicious modification of device settings.

\imgcapt{img/06-07-config-nord-07-01.png}{“Miscellaneous” tab, “Configuration protection” section}


**Password for access to the device**

Mandatory password authentication during connection to the device via USB is another way to ensure security.   
By default, the password for connecting to the device via USB is **0000**. To increase security, it is necessary to change the default access password to a new one. The password length can be from 4 to 16 digits. It is recommended to set a password consisting of the maximum number of digits allowed.   

\imgcapt{img/06-07-config-nord-07-02.png}{“Miscellaneous” tab, "Configuration protection” section, dialog for changing password for accessing the device.}

If the password is lost and the remote connection to the device is not possible, it is possible to restore access to the device only if all its parameters are reset to the factory ones. This will delete all device settings, including zones, users, partitions, etc., and the password for connecting to the device via USB will be default.
   

**Enable restore of factory defaults**  

The reset function can be enabled or disabled for a specific device. If you allow resetting the parameters, it is possible to set a **pause before reset**. By default, this parameter is set to 30 seconds, however, it is possible to select 5 minutes, 30 minutes, 12 hours or 24 hours. The configuration reset is possible only in case of USB connection.

If the reset function is enabled, the password entry window will contain the "Reset configuration" button.

\imgcapt{img/06-07-config-nord-07-03.png}{“Miscellaneous” tab, "Configuration protection” section, dialog for resetting the device configuration.}

When the "Reset configuration" button is clicked, the device generates an event with the code **E752** and starts counting the set pause.

It is recommended to set the maximum values of the *pause before reset* parameter, since such a delay provides additional protection. If the device is reset by an intruder, the private security company manages to react to unauthorized access to the device.
   

**Enable Theft protection function**

If this function is enabled and the changes are stored in the device, then the values of the following parameters can no longer be changed for this device:

* addresses for GPRS connection;
* addresses for connecting over Ethernet;
* station format for radio transmission.   

Before saving the configuration, the device issues a warning:

\imgcapt{img/06-07-config-nord-07-04.png}{“Miscellaneous” tab, “Configuration protection” section, warning about enabling "Theft protection"}

The “Theft protection" function can be enabled both for USB connection and for remote programming.   
It is possible to disable the “Theft protection" function only by contacting the [company technical support](mailto: support@cnord.ru) with an official request to “C.Nord".

