# Steps for getting LXDE to autologon

```
cd ~/.config/lxsession/LXDE
#Backup file if it exists (this may error if it doesn't exist, that's fine)
mv autostart autostart.bak
#Create new file
nano autostart
```
## Content for autostart
```
@/usr/bin/bash /home/**<user>**/thinclient
```
```
nano ~/thinclient
```
## Contents for thinclient
```
cd ~/PVE-VDIClient
while true
do
    /usr/bin/python3 ~/PVE-VDIClient/vdiclient.py
done
```

# LXDE Autologon Settings

```
sudo nano /etc/lightdm/lightdm.conf
```
Find #autologin-user=
Uncomment and change that to the user you created for VDI
Find #autologin-user-timeout=0
Uncomment

Reboot

# For the oh $*!T moments

## To revert
Open a terminal with using CTL+ALT+F2
```
cd ~/.config/lxsession/LXDE
mv autostart autostart.new
mv autostart.bak autostart
cd /etc/xdg/lxsession/LXDE
mv autostart autostart.new
mv autostart.bak autostart
```
