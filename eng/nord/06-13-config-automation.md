\pagebreak

## Automatic controls {#config-automation}

"Automatic controls" mechanism is designed to program the behavior of the device depending on certain conditions. Any events formed by the device or time can act as the conditions. Arming or disarming and actions with open collectors are actions that the device can perform.

Automation can be used to solve the following tasks on sites:

* scheduled arming and disarming;
* arming and disarming of several partitions at the same time;
* display of the partition status on the light indicator;
* activation of sound annunciators connected to the device open collectors;
* control of external devices connected to the device open collectors.

When switching to the "Automatic controls" tab, the buttons at the top of the window allow to configure the rules.

\imgcapt{img/06-13-config-automation-01.png}{Buttons for creating rules, "Automatic controls” tab}

> The device already has the logic of working with light and sound annunciators. To set up open collectors to which the annunciators are connected, it is necessary to use the buttons “Light indicator..." or "Siren ...", depending on the type of the annunciator.

When creating rules, it is important to remember the following:

* If the collector is used to connect other devices (for example, fire indication device), it cannot be used anywhere else, including remote control, which will appear a little later.
* If the collector is already used for roles (Light indicator, Siren), then it cannot be used anywhere else.
* If the EW-12 is connected to the device and the zone is enabled in the device settings, then the collector-on-circuit cannot be used for automation rules or for roles.
* It is possible to create 8 rules with the role of “Light indicator" or "Siren". And these rules do not depend on the number of standard rules of automation.


### Light indicator

**Light indicator connection**

Connect the light indicator to the device as follows:

* Connect the siren "plus" cable to any plus output of the control panel, for example, to the output for powering the keypad or zones. 
* Connect the siren "minus" cable to one of seven open collectors: FIRE, DEFECT, LED_G, LED_Y, FIRE2, DEFECT2, DISABL.

\imgcapt{img/06-13-config-automation-03.png}{Light indicator connection to the device}

If the EW-12 expander is connected to the Nord, then the terminals "Z1" - "Z8" of the expander can be used.   
Any light indicator with a voltage of 12 V can be connected to the devices. The maximum current shall not exceed 250 mA.

**Rule setting**

For a light indicator that indicates the state of site or partition, it is necessary to set up a rule with the role of "Light indicator". To create a rule in the "Automatic controls" tab, click the "Light indicator" button and select the output to which the annunciator is connected. 
In the event that several partitions are configured on the device, then when creating the rule, it is possible to specify the partition for which the light indicator will display the state.


\imgcapt{img/06-13-config-automation-02.png}{Creating “Light indicator” rule}


**Annunciator operation description**

If the "Light indicator" rule is configured to display the partition state:

* The light indicator is continuously lit when the partition is armed;
* The light indicator is not lit if the partition is disarmed;
* The light indicator flashes if the partition is in an alarm;
* The light indicator flashes with double flashes during the exit delay.

If the "Light indicator" rule is configured to display the site state: 

* The light indicator is continuously lit if all partitions are armed;
* The light indicator does not light if at least one of the partitions is disarmed;
* The light indicator flashes if there is at least one partition in the alarm;
* The light indicator flashes with double flashes during the exit delay.


### Siren

** Siren connection**

The siren is connected to the open collector as follows:

* The "plus" cable of the siren can be connected to any plus output of the control panel, for example, to the output for powering keypad or zones. 
* Connect the siren "minus" cable to one of seven open collectors: FIRE, DEFECT, LED_G, LED_Y, FIRE2, DEFECT2, DISABL.

If the EW-12 expander is connected to the Nord, then the terminals "Z1" - "Z8" of the expander can be used.   
Any light indicator with a voltage of 12 V can be connected to the devices. The maximum current shall not exceed 250 mA.


**Rule setting**

For siren it is necessary to set up a rule with the role of "Siren". To create a rule in the "Automatic controls" tab, click the “Siren" button and select the output to which the annunciator is connected. 

\imgcapt{img/06-13-config-automation-04.png}{Creating “Siren” rule}

The siren connected to the open collector differs from the siren connected to the same name "Siren" output: in the first case the device does not control the condition of this line.
To configure the siren sound settings, go to the [Siren](#config-misc-siren) section of the “Miscellaneous” tab.


### Miscellaneous

In addition to the predefined rules, up to 16 other rules can be created in the device. When the conditions specified in the rule are met, the device can perform arming or disarming of one or all partitions, close or open the digital output, and also start the periodic closing and opening of the digital output at a predetermined interval.

\imgcapt{img/06-13-config-automation-05.png}{Window for creating rule}


**Rule setting**

Let’s consider setting up rules for a specific example.

_Task_

Configure arming of partition No. 1 on a schedule at 19.30 on Tuesdays and Wednesdays.

_Solution_

To solve the task, it is necessary to create an action that arms the partition on a schedule.


1. On the "Automatic controls" tab, click the “Miscellaneous" button.
2. In the "Action" field, from the drop-down list, select the “Arming".
3. In the “Partition" field, select "1".
4. In the "Condition" field, select "on schedule".
5. Use the drop-down menus in the "Time" field to set the value to "19:30".
6. In the "Day" field, select "specify". In the days of the week that appear with this list, check "Tu" and "Wd” boxes. Uncheck other boxes.

\imgcapt{img/06-13-config-automation-06.png}{Window for creating rule}

7. Click "OK" to save the rule. The rules will take effect after recording the settings in the device.

\imgcapt{img/06-13-config-automation-07.png}{All created rules}

In this example, automatic arming is considered, but it is possible to specify the site disarming as an action. In this case, the site will be disarmed according on a specified schedule. It is also possible to configure the automatic closing and/or opening of the discrete outputs of the device.

It is possible to configure arming of all site partitions using the “All partitions” value of the “Partition” field. To configure the arming of several specific partitions, for each of them it is necessary to configure the arming separately.

Arming can be set for certain days of the week, as in the example considered; for each day; only for weekdays (from Monday to Friday); and also for weekends only.

Automatic arming, like any other action, can be performed not only on a schedule, but also for an event. In this case, it is necessary to know the event code that will be used in the rule.

