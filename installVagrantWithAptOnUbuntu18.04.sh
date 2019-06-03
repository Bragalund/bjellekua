#!/bin/bash

# install virtualbox
echo -e "\nInstalling virtualbox...\n"
sudo apt install virtualbox -y;
echo "";

# install vagrant
echo -e "installing vagrant...\n"
sudo apt install vagrant -y;
echo "";

# verifying installation of vagrant
command -v vagrant > /dev/null 2>&1 || { echo >&2 "Vagrant was not installed... "; return 1;}
vagrant --version;
