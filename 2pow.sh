#!/bin/bash -x
echo "enter the power of 2"
n=2
read m
for ((i=1, pow=n; i<m; i++));
do
	((pow *= n));
done
echo "the answer is $pow"
