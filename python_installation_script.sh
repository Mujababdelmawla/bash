#!/bin/bash 

tool=python3

# check and insatll python 

if command -v $tool &> /dev/null;
then 
	echo "$tool is already installed"
else 
	echo "$tool is not installed .... installing $tool ...."

# check the os of the device 

if [[ "uname" == "Darwin" ]];
then 
	brew install $tool 
elif [[ "uname" == "linux" ]];
then 
	sudo apt update 
	sudo apt install -y $tool
else
	echo "unsupported os . please check your os "
fi 

# check if $tool installed successfully 

if command -v &> /dev/null; 
then 
	echo "$tool has been installed successfully"
else 
	echo "failed to install $tool "
fi 
fi 
