#!/opt/homebrew/bin/bash

if ls nc-filesystem/staff | grep -q "nc-$1.json"; then
    echo "Staff file found"
else 
    echo "Staff file not found"
fi