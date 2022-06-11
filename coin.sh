#!/bin/bash -x

a=$((RANDOM%11))
echo $a
q=`expr $a % 2`
num=1
while [ $num -le 11 ]
do
 	if [ $q -eq 0 ]
then
	echo "head"
else
	echo "tail"
fi
	((num++))
done
