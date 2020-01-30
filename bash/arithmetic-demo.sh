#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label


read -p "Please Enter first number - " firstnum
read -p "Please Enter second number - " secondnum
read -p "Please Enter third number - " thirdnum

sum=$((firstnum + secondnum +thirdnum))
multiple=$((firstnum * secondnum * thirdnum))

cat <<EOF
Sum of $firstnum plus $secondnum plus $thirdnum is $sum
Multiple of $firstnum ,$secondnum ,$thirdnum is $multiple
EOF
