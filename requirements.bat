@echo off
pip install pyinstaller
pip install proxmoxer
pip install FreeSimpleGUI
pip install requests
pip install pywin32
MD "%APPDATA%\VDIClient\"
copy vdiclient.ini.example "%APPDATA%\VDIClient\vdiclient.ini"
echo "Sucessfully installed the VDI Client; Please set the configuration file"
timeout 5 /NOBREAK > NUL