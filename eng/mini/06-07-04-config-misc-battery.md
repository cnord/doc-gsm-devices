### Backup Power Supply

**Type of backup power supply**  

Use the "Type of backup power supply" parameter to specify which backup source is connected to the device: Battery or UPS.
   

**If battery is connected**

\imgcapt{img/06-07-config-mini-03-01.png}{“Miscellaneous” tab, “Backup power supply” section}

If the battery is selected as a backup power source, then it is possible to include two parameters:

* *Protect backup source against deep discharge.* 

If this parameter is selected, then when voltage reaches 8.5 V on the battery terminals, the device will turn off to prevent the battery from discharging to a critically low level at which its charge cannot be restored. 

* *Check battery quality.* 

To check the battery quality, the device periodically connects the load and monitors the voltage drop. If the voltage drop under the load exceeds 2 V, the event **E309** - *Faulty battery* is generated.
   

**If UPS is connected**

\imgcapt{img/06-07-config-nord-03-02.png}{“Miscellaneous” tab, “Backup power supply” section, "UPS" is selected for “Type of backup power supply"}

If the UPS is selected as a backup power source, enabling of the additional parameters (protection against deep discharge and battery quality control) is not available.
