#! /usr/bin/bash

echo "some lines of code"

for i in $(ls)
do
	echo "hello Bash $i"
	if [ $i == loopScript.sh ]; then
	echo "Yay, this file!"
	break
	fi
done

echo "code continues"
exit
