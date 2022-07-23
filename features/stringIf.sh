#! /usr/bin/bash

echo "hello"

if [ "abcd" == "abcd" ]; then
	echo "same"
fi
echo "<---------------->"

if [ "one" != "One" ]; then
	echo "Different"
fi

echo "<------------->"
read -p "Guess the letter on my mind: " guess
if [ ${guess} == "G" ]; then
	echo "That's correct"
fi

read -p "Type the password to know the file name: " pass
if [ $pass == "Table1X" ]; then
	echo "Correct! the file name is: catfile.txt"
else
	echo "err!"
	exit
fi

echo "exiting.."
