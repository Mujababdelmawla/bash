#!/bin/bash 

echo "Enter A Number : "

read number


if [ $number -gt 0 ];
then 
	echo "The Number You Have Entered Is Positive "
elif [ $number -lt 0 ];
then 
	echo "The Number You Have Entered Is Negative"
else
	echo "The Number You Have Entered Is Zero"
fi 
