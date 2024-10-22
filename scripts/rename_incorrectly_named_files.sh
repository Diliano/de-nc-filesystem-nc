#!/opt/homebrew/bin/bash

for content in ./nc-filesystem/code/*; do
    if [[ -f "$content" ]]; then
        filename=$(basename "$content")
        if [[ "$filename" =~ ^("fun"|"de"|"be")"-" ]]; then
            new_filename=${filename#*-}
            mv "$content" "./nc-filesystem/code/$new_filename"
        fi
    fi
done