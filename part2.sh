#!/bin/bash 


tools=("git" "python3" "curl" "wget")

install_tool()
{
	local tool=$1

	echo "$tool is not installed ...installing $tool"

	if [[ "$(uname)" == "Darwin" ]];
	then 
		brew install $tool 

	elif [[ "$(uname)" == "Linux" ]];
	then 
		sudo apt update 
		sudo apt install -y $tool

	else 
		echo "the os is not supported please check your os "
	fi 
	
	if command -v $tool &> /dev/null;
	then 
		echo "$tool has been successfully installed"
	else 
		echo "failed to install $tool."
	fi 

}


for tool in ${tools[@]};

do 
	if command -v $tool &> /dev/null;
	then
		echo "$tool is already installed."
	else 
		install_tool $tool

	fi 
done 


