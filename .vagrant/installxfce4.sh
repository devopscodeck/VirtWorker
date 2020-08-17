#!/bin/bash -e

<<-Description
    This file install the enviroment xfce4
Description

sudo apt update -y && \
sudo apt upgrade -y && \
sudo apt install -y xorg gnome-core gnome-system-tools && \
sudo apt install -y xfce4 && \
sudo startxfce4&

if [ $? = 0 ]
then
    echo "Install Xfce4 with Sucess"
else :
    echo "Installing Fail, please, reviw the code"
fi

