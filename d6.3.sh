#!/bin/bash

echo "enter a number:"
read number
sum=0
reminder=0
temp=$number
result=1
while [ $number -gt 0 ]
do
	reminder=$(($number%10))
	sum=$((($sum*10)+$reminder))
	number=$(($number/10))
done
if [ $temp -eq $sum ]
then
	echo "palindrome"
else
	echo "not a palindrome"
fi
for (( counter=2; counter<$temp; counter++ ))
do
	if [ $(($temp%$counter)) -eq 0 ]
	then
		result=$(($result+1))
	fi
done
if [ $result -eq 1 ]
then
	echo "and prime number"
else
	echo "but not a prime number"
fi
