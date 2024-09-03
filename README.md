# winboxlauncher
Scripts and registry files for launching Winbox from Chrome

There are 3 files in this repo: A registry file to import into the registry, a VB script to prevent the powershell window from flashing ( which is annoying ), and a powershell script that parses the URL and calls winbox.exe. I created a folder "Program Files/Winbox" to place both the winbox executable and these files. You can place them wherever you like, but you'll have to edit the scripts accordingly.

Once these files are installed and you've imported the registry entries, navigate to a URL winbox://ipaddress%20user%20password and it should open winbox and log you in.

Obviously putting credentials in a URL like this has some security implications, but the assumption is that you are already logged into another app ( CRM, NMS, etc ) and it should be providing the credentials when creates the URL. For this reason, security concerns should be addressed in the calling app.
