#!/bin/bash

echo "Enter a number"
read number 
x=$number 
fact=1

while [ $number -gt 1 ]
do
	fact=`expr $number \* $fact`
	number=$((number - 1))
done 

echo "Factorial of "$x "is: "$fact
