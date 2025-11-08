cd ~/.config/lxsession/LXDE
# Backup file if it exists (this may error if it doesn't exist, that's fine)
# mv autostart autostart.bak
# Create new file
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
echo "You must edit /etc/lightdm/lightdm.conf and change the autologon-user= & autologin-user-timeout=0"