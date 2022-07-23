#! /usr/bin/bash
echo "starting.."
ls -l
sleep 2s

echo "selecting only txt and jpg files"
ls -l *.txt *.jpg
sleep 1s

echo "deleting previous .jpg and .txt files"
for item in *.txt *.jpg; do
    if [ -e "$item" ]; then
        rm "${item}"
    fi
done
ls -l
sleep 2s
echo "clean"
echo "creating new .txt and .jpg files"
for file in {1..4}; do
    touch "file${file}.txt"
    touch "pic${file}.jpg"
done
ls -l
sleep 04s
echo "done"
while [ "$filetype" != "j" ] && [ "$filetype" != "J" ] && [ "$filetype" != "t" ] && [ "$filetype" != "T" ]; do
    read -p "Press j to rename jpg or t to rename txt: " filetype
done
read -p "enter a prefix: " prefix

case $filetype in
"j")
    for i in *.jpg; do
        #mv *.jpg "${prefix}_${i}" #Error: was renaming a collection *.jpg into a single file prefix_name.jpg - hence trigging the system complaint that the target is not a directory.
        mv "$i" "${prefix}_${i}"
    done
    echo 'All .jpg files were successfully renamed'
    ;;
"J")
    for i in *.jpg; do
        mv "$i" "${prefix}_${i}"
    done
    echo 'All .jpg files were successfully renamed'
    ;;
"t")
    for i in *.txt; do
        mv "$i" "${prefix}_${i}"
    done
    echo 'All .txt files were successfully renamed'
    ;;
"T")
    for i in *.txt; do
        mv "$i" "${prefix}_${i}"
    done
    echo 'All .txt files were successfully renamed'
    ;;
*)
    echo 'Invalid selection'
    echo 'exiting...'
    exit
    ;;
esac

echo "exiting..."
