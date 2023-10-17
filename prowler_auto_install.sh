#!/bin/bash

#Upgrade the OS
sudo dnf upgrade -y

#Create Linux swap of 16GB (128X64=8GB(BS=128 is optimal for creation))
sudo dd if=/dev/zero of=/swapfile bs=128M count=64
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
echo "/swapfile swap swap defaults 0 0" >> /etc/fstab

#Add /usr/local/bin to root path
echo 'export PATH="/usr/local/bin:$PATH"' >> /root/.bashrc

#Install script and Prowler dependencies
sudo dnf install -y jq git pip openssl-devel bzip2-devel libffi-devel gcc git zlib-devel

#Clone Multi-Account-Security-Assessment Repo
cd /usr/local
git clone https://github.com/aws-samples/multi-account-security-assessment-via-prowler prowler

#Upgrade pip and install pipenv
cd /usr/local/prowler

#Install Prowler via pip3
pip install prowler

#Install Python Report Dependencies
pip install matplotlib numpy

#Reinstall OS based Colorama
sudo dnf reinstall python3-colorama -y

#Set script to be executable
chmod +x /usr/local/prowler/prowler_scan.sh
