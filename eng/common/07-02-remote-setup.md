## Remote Access Setting

Remote access to the device is possible only if compatible software, for example, "Security Center" is installed on the receiver to which the device is connected. To use remote access to the device, it is necessary to do the following:

1. Create an engineer in the alarm monitoring software

2. To give the engineer the right to remote access to certain sites

### Creating Engineer

To create an account for an engineer in the Security Center software, start the “Personnel manager” module and click the “New” button on the “Engineers” tab:

\imgcapt{img/sc-eng-list-1.png}{}

In the opened window fill in all fields with information about the engineer:

\imgcapt{img/sc-eng-list-2.png}{}


Pay particular attention to the "Email" field. It is to the e-mail address specified in this field that an email will be sent with a link where the engineer will need to go to complete the registration of the account in the “Cloud”. The engineer's email serves to identify him in the “Cloud”. After the engineer is created, it is not possible to change the value of this field.

If the engineer for whom the account is created shall be able to remotely update the software on devices that are installed on the sites, check the box "Allow an engineer to remotely update software on site devices". *This setting is available in the "Security Center" version 5 and above.*

**Important:** The engineer's permission to update the software applies to all sites of the security company with the function of remote firmware upgrade.

In order for the changes to take effect, click the "Save" button on the "Engineers" tab. After this information about the engineers and their right to update the devices is synchronized with the "Cloud".

### Granting Permissions to Engineer 

To give the engineer permission to remote access to equipment installed on the site in the Security Center software, the following actions shall be performed:

1. Run the "Site manager” module

2. Select the site to which you want to allow remote access

3. Go to the "Maintenance" tab

4. Click the "Add permission” button
   
\imgcapt{img/sc-eng-perm-1.png}{}

5. In the window that appears, select the engineer who needs remote access to the site 
   
\imgcapt{img/sc-eng-perm-2.png}{}

6. Specify the time interval during which the permission will be valid.
   
7. Click the “Give permission” button.

