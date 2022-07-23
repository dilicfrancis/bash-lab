#! /usr/bin/bash

number1=29
number2=8

echo "SUM $((number1+number2))"
echo "PRODUCT $((number1*number2))"
echo "DIVISION $((number1/number2))"
echo "REMAINDER $((number1%number2))"
echo "POWER $((number1**number2))"

echo "INCREMENT $((number1+1))"
echo "INCREMENT $((number1++))"
echo "INCREMENT $((++number1))"

echo "DECREMENT $((number1-1))"
echo "DECREMENT $((number1--))"
echo "DECREMENT $((--number1))"

echo "INCREMENT $((number1*=2))"
echo "INCREMENT $((number1/=3))"
echo "INCREMENT $((number1+=1))"

if [ $number1 -eq 203 ]; then 
	echo "true"
fi

read -p "How old are you? " age

if [ $age -gt 18 ]; then 
	echo "you can drink"
else
	echo "you can't drink"
fi

read -p "Enter a number between 1 - 4: " num
if [ $num == "1" ]; then
	echo "typed 1"
elif [ $num == "2" ]; then
	echo "typed 2"
elif [ $num == "3" ]; then
	echo "typed 3"
elif [ $num == "4" ]; then
	echo "typed 4"
else
	exit
fi

read -p "How old are you again? " new_age
if [ $new_age -lt 0 -o $new_age -gt 200 ]; then
	echo "that's pretty wide"
	exit
fi
read -p "How old are you again? " new_age
if [ $new_age -gt 18 -a $new_age -lt 74 ]; then
        echo "Hey"
        exit
fi
