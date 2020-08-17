#!/bin/bash -e

<<-Description
    This file install the enviroment xfce4
Description

sudo apt update -y && \
sudo apt upgrade -y && \
sudo apt install xfce4 -y && \
sudo apt install xubuntu-desktop -y

if [ $? = 0 ]
then
    echo "Install Xfce4 with Sucess"
else :
    echo "Installing Fail, please, reviw the code"
fi

