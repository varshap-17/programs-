#!/bin/bash

echo "enter three numbers:"
read a
read b
read c
array[0]=$(awk 'BEGIN {print '$a' + '$b' * '$c'}')
array[1]=$(awk 'BEGIN {print '$a' % '$b' + '$c'}')
array[2]=`expr $a + $b / $c`
a=`expr $a + $b / $c`
echo $a
array[3]=$(awk 'BEGIN {print '$a' * '$b' + '$c'}')
echo "1. a + b * c = ${array[0]}"
echo "2. a % b + c = ${array[1]}"
echo "3. c + a / b = ${array[2]}"
echo "4. a * b + c = ${array[3]}"
max=0
min=10000
for i in "${array[@]}"
do
	if [ $i -gt $max ]
	then
		max=$i
	fi
	if [ $i -lt $min ]
	then
		min=$i
	fi
done
echo "Maximun value in above arithmetic operation: $max"
echo "Minimum value in above arithmetic operation: $min"
