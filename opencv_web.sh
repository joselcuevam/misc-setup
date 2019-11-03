#!/bin/bash

echo "starting"

echo "allow ssh"
sudo sed 's/#.*PasswordAuthentication/PasswordAuthentication/g' -i /etc/ssh/ssh_config
sudo sed 's/PasswordAuthentication no/PasswordAuthentication yes/g' -i /etc/ssh/sshd_config
sudo service ssh restart

yes|sudo apt-get install software-properties-common
yes|sudo apt-add-repository universe
yes|sudo apt-get update
yes|sudo apt-get install python-pip

#yes|sudo apt install python
#yes|sudo apt install python-pip
yes|sudo pip install numpy scipy matplotlib scikit-learn jupyter  --no-cache-dir
yes|sudo apt-get install python-numpy python-scipy python-matplotlib 
yes|sudo pip install opencv-contrib-python --no-cache-dir
yes|sudo apt-get install python-opencv

#yes|sudo apt-get install python3-pip
#python3 -m pip install jupyterhub
jupyter notebook --generate-config
#jupyterhub --generate-config

echo "install in sudo to get port 80"
#sudo jupyter notebook --no-browser --port 80 --allow-root
