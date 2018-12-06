### Arm and disarm

In this section, it is possible to specify various parameters that will affect the process of arming or disarming.

\imgcapt{img/06-07-config-nord-04.png}{“Miscellaneous” tab, “Arm and disarm” section}

**Disable arming when triggering the alarm in zones with exit delay**

By default, the alarm in zones with exit delay is ignored at the time of arming. This is done so that the user can arm the site and close the entrance door behind him/her without hurry. But, if you want to be sure that all alarm zones are normal at the time of arming, it is possible to enable alarm monitoring in zones with exit delay. To do this, check the *Disable arming when triggering the alarm in zones with exit delay* box.
   

**Disable arming when no main power supply (AC) is available**

If this parameter is set, the device cannot be armed if it is running on a backup power supply and the main one is not available.
   

**Disable arming when no IP communication with the Security Center is available**

If this parameter is set, the device cannot be armed if there is no GPRS communication.
   

**Enable remote arm/disarm from the Security Center**

This parameter allows to remotely control the protection state from the mobile application and the repeater.
   

**Enable duress codes**

The code of forced disarming is a code that differs from the user code by one unit plus or minus. For example, if the user code is "1234", then the forced disarming codes will be "1233" and "1235". At the same time:

* if the user code ends with "0", then the forced disarming code will be only one – one more. For example, if the user code is "5840", then the forced disarming code will be only "5841".
* if the user code ends with "9", then the forced disarming code will be only one – one less. For example, if the user code is "5849", then the forced disarming code will be only "5848".
    

