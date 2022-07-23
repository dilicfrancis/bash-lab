#! /usr/bin/bash

divisible() {
    local result=$((${1} % 3))
    #echo "$result"

    if [ "$result" -ne 0 ]; then
        echo "Not divisible by 3"
    else
        echo "Yep, divisible by 3"
    fi
}

while [ "$num" != "exit" ]; do
    read -p "Enter a number: " num

    divisible "${num}"
done

echo "exiting..."
