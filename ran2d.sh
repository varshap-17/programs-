#!/bin/bash -x

echo "Enter the total number you want to enter:"
n=5
i=0
while [ $i -lt $n ]
do
	a[$i]=$((RANDOM%50))
	i=`expr $i + 1`
done
sub=0
echo "output:"
for i in "${a[@]}"
do
	echo $i
	sub=`expr $sub + $i`
	#echo "addition of five number:" $sub
done
add=0
echo "addition of five number :" $sub
avg=`expr $sub/$n`
echo "average of five number:" $avg


