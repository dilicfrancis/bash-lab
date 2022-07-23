#! /usr/bin/bash

read -p "what phrase are you searching for? :" phrase

for file in *; do
    if [ -f "$file" ]; then

        result=$(grep -ni "$phrase" "$file")

        if [ -n "$result" ]; then
            if [ ! -d search_result ]; then
                mkdir search_result
            fi
            cp "$file" search_result/
            {
                echo " "
                echo "------------------"
                echo "$result"
            } >>search_result/"$file"

        fi
    fi
done
echo "ready"
