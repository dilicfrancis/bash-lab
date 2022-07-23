#! /usr/bin/bash

mkdir output
touch output/1.txt
ls -l >output/1.txt
read -p "Choose a prefix for your output file? " outVal
mv output/1.txt output/${outVal}_1.txt
echo "Your file, ${outVal}_1.txt, is ready in directory output."
echo "exiting.."
