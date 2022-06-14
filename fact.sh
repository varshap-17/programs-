#!/bin/bash 

echo "enter a number;"
read n1
result=1
for (( number=1; number<=$n1; number++ ))
do
	result=$(( $result*$number ))
done
echo "factorial of a number is:$result"
