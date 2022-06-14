#!/bin/bash
#generate a random using `shuf` command
echo "how many random numbers do you want to generate?:"
read number

#print the genetrated random numbers
echo "the generated random numbers are:"
for n in `seq "$number"`
do
randomNumber=$(shuf -i 1-1000 -n1)
echo $randomNumber
done
