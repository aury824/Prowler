#!/bin/sh

#Python3.9 install
wget https://www.python.org/ftp/python/3.9.5/Python-3.9.5.tgz
tar xvzf Python-3.9.5.tgz
cd Python-3.9.5
./configure --enable-optimizations
sudo make altinstall


#Pip version upgrade
/usr/local/bin/python3.9 -m pip install --upgrade pip


#Prowler3 version install
/usr/local/bin/pip3.9 install prowler
