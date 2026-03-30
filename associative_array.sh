#!/bin/bash 

# Declare an associative array 

declare -A person 

# assign values to the key 

person["name"]="MUJAB"
person["age"]=26

# access the values using the key 

echo ${person["name"]}
echo ${person["age"]}


# -A to declare that there is a key 

# associative array is used to store multiple elements by keys and values 
