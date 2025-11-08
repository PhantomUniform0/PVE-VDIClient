#!/bin/bash
#This script will install the prereqs for the VDI Client as well as create a config file
pip3 install proxmoxer # Proxmox api
pip3 install FreeSimpleGUI # GUI for VDI Client
pip3 install requests
mkdir ~/.config/VDIClient/ # Now we're creating the config
cat vdiclient.ini.example > ~/.config/VDIClient/vdiclient.ini
echo "Sucessfully installed the VDI Client; Please set the configuration file" # Script finished message