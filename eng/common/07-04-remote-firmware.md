## Remote Software Update on Device

**Important:** Remote software update works only for devices that are configured to use IP communication channels – GPRS or Ethernet (if available).

**Important:** The functions described in this section work only if the device is connected to the Security Center software.

### Information about Sites on Receiver

To remotely update the "firmware" in devices, the tab “Site software update" is located in the engineering panel:

\imgcapt{img/remote-firmware.png}{}

This tab displays statistics on software versions, grouped by device types. For example, for the "Nord GSM” device:

\imgcapt{img/nord-firmware.png}{}

* 20 "Nord GSM" devices work for this receiver
* Current software version for "Nord GSM" - 5.40
* 10 devices are currently working on the old version, of which:
  * 6 - marked red - no plans to update
  * 4 - marked yellow - are in the process of updating
* 10 devices work on the current software version for this equipment

To open the software update page on devices of this type, click the "Update ..." button

### Process of Remote Software Update on Device

The software update process on the device consists of several steps and is intended to work even on networks with a very unstable GPRS signal.

#### Queuing for Upgrade

From the "Cloud" engineering panel, a command is given to set the device in the queue for updating.

If the device is connected to the "Cloud", then a command will be sent to the device to reconnect and initiate the update process.

If the device is not connected to the Cloud, then the update process will not start until the device is connected.

#### Downloading Current "Firmware"

Once the device has received the update command, it starts downloading the archive with the current software version. The total file size is from 200 to 500 Kb, depending on the type of device. "Firmware" is downloaded in parts to reduce the impact of communication interruptions.

Downloading duration heavily depends on the communication quality and can range from several minutes on the Ethernet channel to several hours on the GPRS channel.

#### Archive Checking

After the "firmware" file is fully downloaded, the device checks its integrity and suitability for use on this type of device and on this hardware version of the board. If all checksums match and all compatibility checks are completed, the "firmware" is marked as "ready for installation".

#### Update

Next, the device waits for a state when at least one of the partitions is disarmed, and reboots to apply the update.

Upgrade duration is no more than 10 seconds.

#### Start

After updating the firmware, the device starts normally. All settings and protection status for partitions are saved in the same state as they were before updating.

### Updating Software on Selected Site

If it is necessary to check the functions of the new software version on one or more sites before mass installation, it is possible to use the software update on the selected site.

To do this, click the "Update using site number...” button on the software update page:

\imgcapt{img/remote-update.png}{}

In the dialog that appears, enter the site number for the update:

\imgcapt{img/remote-update-single.png}{}

And click the "Update" button. After that, this site will be added to the queue for software update.

### Updating Software on all Sites

After checking the software on several sites, it is possible to add all the remaining sites with the previous version of the software to the upgrade queue.

To do this, click the "Update software at all sites” button on the software update page:

In the dialog that appears:

\imgcapt{img/remote-update-all.png}{}

click the "Update all sites” button. After that, all sites of this type with the irrelevant version of the software will be added to the update queue.

### Update Process Stopping

If for some reason there is a need to stop the update process, it can be interrupted until the device has completely downloaded the update file.

To do this, click "Cancel update..." and confirm the action.

