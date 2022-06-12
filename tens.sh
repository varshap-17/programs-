#!/bin/bash -x

echo "enter the single digit number:"
read n
if [ $n -eq 1 ]
then
	echo "unit"
elif [ $n -eq 10 ]
then
	echo "ten"
elif [ $n -eq 100 ]
then
	echo "hundred"
elif [ $n -eq 1000 ]
then
	echo "thousand"
else
	echo "greater than thousand"
fi
