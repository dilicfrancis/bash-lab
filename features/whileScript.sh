#! /usr/bin/bash

echo "some lines of code"

number=1

while [ $number -le 7 ]; 
do
	echo "number is ${number}"
	number=$((number + 1))
done
echo "code continues"
