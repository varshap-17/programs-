#!/bin/bash -x

a=$((RANDOM%6))
if [ $a -eq 0 ]
then
	echo "1 to 6"
else
	echo $a
fi
