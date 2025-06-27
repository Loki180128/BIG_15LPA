#!/bin/bash

<<INTRO

THIS SCRIPTS WILL INSTALL THE 
PACKAGE THAT YOU PASS IN THE ARGUMENTS

E.g ./install_package.sh nginx
./install_package.sh docker.io
./install_package.sh unzip

INTRO

echo "installing the $1"
sudo apt-get update > /dev/null
sudo apt-get install $1 -y > /dev/null
echo "installation completed "
