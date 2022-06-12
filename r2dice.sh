#!/bin/bash -x

a=$((RANDOM%6))
if [ $a -eq 0 ]
then
	a=6
	echo "dice first value:"  $a
else
	echo "dice first value:"  $a
fi
b=$((RANDOM%6))
if [ $b -eq 0 ]
then
	b=6
	echo "dice second value:" $b
else
	echo "dice second value:" $b
fi
echo "addition of dice value"  `expr $a+$b`
