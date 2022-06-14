#!/bin/bash -x

echo "enter the single digit number:"
read n
case "$n" in
1) echo "unit"
;;
10) echo "ten"
;;
100) echo "hundred"
;;
1000) echo "thousand"
;;
*) echo "greater than thousand"
;;
esac
