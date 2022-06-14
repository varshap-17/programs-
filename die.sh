#!/bin/bash -x

RANDOM $$

PIPS=6
MAXTHROWS=600
throw=0

ones=0
twos=0
threes=0
fours=0
fives=0
sixes=0

print_result ()
{
	echo
	echo "ones = $ones"
	echo "twos = $twos"
	echo "threes = $threes"
	echo "fours = $fours"
	echo "fives = $fives"
	echo "sixs = $sixs"
	echo
}

update_count()
{
case "$1" in
	0) let "ones += 1" ;;
	1) let "twos += 2" ;;
	2) let "threes += 3" ;;
	3) let "fours += 4" ;;
	4) let "fives += 5" ;;
	5) let "sixs += 6" ;;
esac
}
echo

while [ "$throw" -lt "$MAXTHROWS" ]
do
	let "die1 = RANDOM % $PIPS"
	update_count $die1
	let "throw += 1"
done

print_result

exit 0

