#! /usr/bin/bash

num=0
for i in ./*.txt; do

    echo "$((++num)) text file(s) found..."

done

echo "$num total .txt files in this directory."

exit
