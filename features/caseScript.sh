#! /usr/bin/bash

echo "select an option... "

echo "Press 1 for Truth"
echo "Press 2 for Dare"

read selection

case $selection in
1) echo "code for Truth";;
2) echo "code for Dare";;
*) echo "code for default"
esac



