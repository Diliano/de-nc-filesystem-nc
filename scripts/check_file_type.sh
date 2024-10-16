#!/opt/homebrew/bin/bash

read -p "Enter the name you would like to check: " name
echo

if [ -d nc-filesystem/code/$name ]; then
    echo "$name is a directory"
    echo 
    echo "Contents of $name:"
    echo
    ls nc-filesystem/code/$name
elif [ -f nc-filesystem/code/$name.* ]; then
    echo "$name is a file"
else
    echo "Not found"
fi