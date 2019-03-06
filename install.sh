#!/bin/bash

echo "deb http://download.osmc.tv/dev/gmc-18 gmc-18 main" | sudo tee -a /etc/apt/sources.list
wget -qO - http://download.osmc.tv/dev/gmc-18/pubkey.asc | sudo apt-key add -

sudo apt-get update
sudo apt-get dist-upgrade -y

sudo apt-get install python-pip python-crypto build-essential -y
sudo apt-get install python-all-dev python-setuptools python-wheel -y
sudo apt-get install python-crypto-dbg python-crypto-doc python-pip-whl -y

pip install pycryptodomex
sudo ln -s /usr/lib/python2.7/dist-packages/Crypto /usr/lib/python2.7/dist-packages/Cryptodome

wget https://github.com/kodinerds/repo/raw/master/repository.netflix/repository.netflix-1.0.1.zip
wget https://github.com/Sandmann79/xbmc/releases/download/v1.0.2/repository.sandmann79.plugins-1.0.2.zip

sudo reboot