#!/bin/bash -x
#sum of array shell script
arr=(100 200 300 400 500 600 700 800 900)
sum=0
for i in ${arr[@]}
do
	sum=`expr $sum + $i`
done
echo $sum
