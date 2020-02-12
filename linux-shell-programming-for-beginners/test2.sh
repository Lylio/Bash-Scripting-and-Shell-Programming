#!/usr/bin/env bash

# Calculate the sum of two number from user input

read -p "Enter first number: " num1
read -p "Enter second number: " num2
sum=$(( $num1 + $num2 ))
echo The sum of your two numbers is $sum