cd ~/.config/lxsession/LXDE
#Backup file if it exists (this may error if it doesn't exist, that's fine)
mv autostart autostart.bak
#Create new file
echo @/usr/bin/bash /home/$USER/thinclient > autostart
# Thinclient Options
cat > ~/thinclient <<'EOF'
# Contents for thinclient
# Yes the CD is supposed to be here to allow the stupid thing to load
cd ~/PVE-VDIClient
while true
do
    /usr/bin/python3 ~/PVE-VDIClient/vdiclient.py
done
EOF
# LXDE Autologon Settings
if grep -q '^#autologin-user=' "/etc/lightdm/lightdm.conf"; then
  sed -i "s/^#autologin-user=.*/autologin-user=$USER/" "/etc/lightdm/lightdm.conf"
elif grep -q '^autologin-user=' "/etc/lightdm/lightdm.conf"; then
  sed -i "s/^autologin-user=.*/autologin-user=$USER/" "/etc/lightdm/lightdm.conf"
else
  echo "autologin-user=$USER" >> "/etc/lightdm/lightdm.conf"
fi
echo "Script Complete: NOTE YOU MUST DISBLE THE LOCK SCREEN IN AUTO START"