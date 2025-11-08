#!/bin/bash
sudo apt install python3-pip python3-tk virt-viewer git # Installing prereqs
sudo dpkg-divert --rename --add /usr/lib/$(py3versions -d)/EXTERNALLY-MANAGED # Allowing PIP to install packages required for VDI-Client
sudo git clone https://github.com/PhantomUniform0/PVE-VDIClient # Clone the repo
cd ./PVE-VDIClient/ 
sudo chmod +x requirements.sh # allow the reqs script to be executed
./requirements.sh # run the reqs script
sudo cp vdiclient.py /usr/local/bin 
sudo chmod +x ~/PVE-VDIClient/vdiclient.py # make the client executable
./vdiclient.py # run the client to verify install
echo "Installer script complete"