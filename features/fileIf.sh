#! /usr/bin/bash

read -p "select a filename: " file

#condition to chack whether a directory or file exists
if [ -e  $file ]; then
        echo "directory or file exists"
fi

#condition to check if a file exists
if [ -f  $file ]; then
	echo "$file EXISTS"
fi

#Negate a condition
if [ ! -f  $file ]; then
        echo "file DOES NOT EXIST"
fi

#Condition to check if a file is a DIRECTORY
dir=dir1
if [ -d  $dir ]; then
        echo "$dir EXISTS"
fi

if [ ! -d  $dir ]; then
        echo "directory DOES NOT EXIST"
fi

#condition to chack whether a file is readable
if [ -r  $file ]; then
        echo "$file is READABLE"
fi

#condition to chack whether a file is writable
if [ -w  $file ]; then
        echo "$file is WRITABLE"
fi

#condition to chack whether a file is executable
if [ -x  $file ]; then
        echo "$file is EXECUTABLE"
fi

#condition to chack whether a file has content 
if [ -s  $file ]; then
        echo "$file has content"
fi
