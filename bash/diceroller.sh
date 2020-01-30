#!/bin/bash
#
# this script rolls a six-sided die
#

# Task: Improve this script by making it roll as many dice as there are letters in your first name, instead of just one

# roll the dice and display the result

roll1=$(( RANDOM % 6 + 1))

echo "EOF
Rolling...
$roll1 $roll1 $roll1 $roll1 $roll1 $roll1 $roll1 $roll1
"
