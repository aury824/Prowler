#!/bin/sh

#Python3.9 install
wget https://www.python.org/ftp/python/3.9.5/Python-3.9.5.tgz
tar xvzf Python-3.9.5.tgz
cd Python-3.9.5
./configure --enable-optimizations
sudo make altinstall

HOME_dir=`echo $USER`

echo 'alias python="/usr/local/bin/python3.9"' >> /home/$HOME_dir/.bashrc
echo 'alias pip="/usr/local/bin/pip3.9"' >> /home/$HOME_dir/.bashrc
source /home/$HOME_dir/.bashrc

#Prowler3 version install
pip install prowler
