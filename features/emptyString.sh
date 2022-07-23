#! /usr/bin/bash

read -p "Type something: " str
##if [ -z $str ]; then
##in the above, if user enters a space between two strings e.g. Hello There, it is interpreted in the if check as [ "Hello" "There" -z $Str ] this will trigger an error.
#better approach
if [ -z "$str" ]; then
	echo  "you didn't type, did you?"
	exit
else
	echo "you typed ${str}"
fi
