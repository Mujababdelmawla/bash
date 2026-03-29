#!/bin/bash 

add_numbers()
{
	result=$(($1 + $2))
	echo $result
}

sum=$(add_numbers 20 36)
echo "the sum of your enterd number is : $sum"
