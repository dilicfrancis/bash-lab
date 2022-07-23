#! /usr/bin/bash

read -p "Type yes to confirm delete of folder searchresult: " search_result
if [ "$search_result" != "yes" ]; then
    echo "exiting..."
    exit
fi

rm -R search_result/

scope=$(find . -type d)
read -p "what phrase are you searching for? :" phrase

for folder in $scope; do
    echo "folder: $folder"
    for file in "$folder"/*; do
        if [ -f "$file" ]; then
            # echo "file is $file"
            result=$(grep -ni "$phrase" "$file")
            echo "$result"
            if [ -n "$result" ]; then
                if [ ! -d search_result ]; then
                    mkdir search_result
                fi
                base_name=$(basename "$file")
                cp "$file" search_result/
                {
                    echo " "
                    echo "------------------"
                    echo "$result"
                } >>search_result/"$base_name"

            fi
        fi
    done
    echo "*****************************"
    echo " "
done
