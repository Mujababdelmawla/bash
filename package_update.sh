#!/bin/bash 

# this script is going to automate the package update in my system 


echo "updating package list"
sudo apt update 

echo "upgrading package"
sudo apt upgrade -y 

echo "cleaning up ..."
sudo apt  autoremove -y
