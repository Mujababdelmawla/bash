#!/bin/bash 

check_even_odd()

{

	if [ $(($1 % 2)) -eq 0 ];
	then 
		echo "the nubmer $1 is even"
	else
		echo "the number $1 is odd"
	fi 
}

check_even_odd 7
