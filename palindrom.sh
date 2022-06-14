#!/bin/bash -x

echo  -n "enter a number:"
read n
sd=0
rev=""
on=$n
while [ $n -gt 0 ]
do
	sd=$(($n%10))
	n=$(($n/10))
	rev=$( echo ${rev}${sd} )
done
	if [ $on -eq $rev ]
then
	echo "panlindrome"
else
	echo "not a palindrome"
fi

