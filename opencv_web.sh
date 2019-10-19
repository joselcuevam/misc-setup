#!/bin/bash

echo "starting"

yes|sudo apt-get install software-properties-common
yes|sudo apt-add-repository universe
yes|sudo apt-get update
yes|sudo apt-get install python-pip

yes|sudo apt install python
yes|sudo apt install python-pip
yes|pip install numpy scipy matplotlib scikit-learn jupyter
yes|pip install opencv-contrib-python
yes|sudo apt-get install python3-pip
python3 -m pip install jupyterhub
jupyterhub --generate-config

echo "install in sudo to get port 80"
