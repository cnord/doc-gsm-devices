## Device Connection to computer {#firmware-driver}

The operating system of the Windows family (XP/7/8/10) shall be installed on the computer to which the device is connected. The operating system bitness (32 or 64 bits) does not matter.

> Before connecting the device to the computer, *it is strongly recommended* to supply the main or backup power to it. If the device is powered by *only* USB, then its operation may be unstable.

Before you start working with the device, install the driver. The device is connected to the computer using a USB-Mini cable, and the driver is a special software that allows programs with which the user interacts to exchange data with the device.

The same driver is supplied for all operating systems.

## Driver Installation in Windows XP and Windows 7

When you first connect the device to the computer, a notification will appear in the system tray of the taskbar that new hardware has been found.
You can install the driver through Device Manager. To do this, go to the "Start" menu, right-click "Computer" and select Manage, then in the left menu select "Device Manager".

\imgcapt{img/05-02-driver-02.png}{}

\imgcapt{img/05-02-driver-03.png}{}

Right-click on the Soyuz CDC device and select the menu item "Update drivers".

\imgcapt{img/05-02-driver-04.png}{}

Reject the proposal to automatically find the driver for the new hardware, select the driver installation manually.

\imgcapt{img/05-02-driver-05.png}{Selection of manual installation}

Specify the path to the **Driver** folder and click Next.

\imgcapt{img/05-02-driver-06.png}{Selection of driver location}

The driver for the Nord GSM device does not have a digital signature. Therefore, you shall explicitly confirm to the operating system the need to install it.

\imgcapt{img/05-02-driver-07.png}{Confirming the driver installation without a digital signature}

After the driver installation is complete, click the "Close" button.

\imgcapt{img/05-02-driver-08.png}{Completing the driver installation}

To make sure that the driver for the device is installed, open the Windows Device Manager and find the virtual serial port that corresponds to the device connected to the computer.

\imgcapt{img/05-02-driver-09.png}{Device serial port of in the "Device Manager”}


## Driver Installation in Windows 8

Windows 8 operating system does not allow you to install drivers without a digital signature, as it was possible in previous versions. Therefore, before installing the driver for the device in this operating system, load it in a special mode - with the mandatory check of driver signature disabled.

To download the Windows 8 operating system with driver verification disabled, perform the following sequence of steps.

Press the key combination **Win + I**, then hold the button **Shift** and select the item "**Shutdown**" - “**Reboot**":

\imgcapt{img/05-02-driver-10.png}{Reboot to change boot parameters}

After the operating system restarts, the startup parameters window will appear. Select "**Diagnostics**":

\imgcapt{img/05-02-driver-11.png}{Entering the diagnostic mode}

In the window "**Diagnostics**”, select the "**Additional parameters**":

\imgcapt{img/05-02-driver-12.png}{Advanced diagnostics parameters}

In the "**Additional parameters**" window, select "**Boot parameters**":

\imgcapt{img/05-02-driver-13.png}{Operating system boot parameters}

In the "**Boot parameters**" window, left-click the “**Reboot**" button:

\imgcapt{img/05-02-driver-14.png}{Reboot}

The operating system will reboot again, after which the "**Boot parameters**" window will appear. In this window, press the F7 button to continue loading the operating system with driver signature verification disabled:

\imgcapt{img/05-02-driver-15.png}{Disabling mandatory driver signature verification}

After the operating system starts, install the device driver in the same way as in the operating systems Windows XP/Windows 7. After installing the driver, restart your computer again to enable driver signature verification.

