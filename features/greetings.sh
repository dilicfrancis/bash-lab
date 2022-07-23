#! /usr/bin/bash

echo "Hello"
read -p "What is your name? " username
echo "Well, ${username}, such a pleasure to meet you!"
read -p "Which file will you like to open? " file
echo "ok"
cat $file
read -p "Any other file today? " file
echo "Goodbye"

#this is a comment
