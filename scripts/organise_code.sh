#!/opt/homebrew/bin/bash

mkdir "./nc-filesystem/code/javascript" 
mkdir "./nc-filesystem/code/javascript/sprints" "./nc-filesystem/code/javascript/katas" "./nc-filesystem/code/javascript/loose"

mkdir "./nc-filesystem/code/python" 
mkdir "./nc-filesystem/code/python/sprints" "./nc-filesystem/code/python/katas" "./nc-filesystem/code/python/loose"

mkdir "./nc-filesystem/code/go" 
mkdir "./nc-filesystem/code/go/katas" "./nc-filesystem/code/go/loose"

mkdir "./nc-filesystem/code/typescript" 
mkdir "./nc-filesystem/code/typescript/katas" "./nc-filesystem/code/typescript/loose"

for content in ./nc-filesystem/code/*; do 

    if [[ -d "$content" ]]; then 
        dir_name=$(basename "$content")

        if [[ "$dir_name" =~ ^("fun"|"be")"-" ]]; then
            mv "$content" "./nc-filesystem/code/javascript/sprints"
        fi
        if [[ "$dir_name" == "de-"* ]]; then
            mv "$content" "./nc-filesystem/code/python/sprints"
        fi
    fi

    if [[ -f "$content" ]]; then
        filename=$(basename "$content")

        if [[ "$filename" == "kata-"* ]]; then
            if [[ "$filename" == *".js" ]]; then
                mv "$content" "./nc-filesystem/code/javascript/katas"
            fi
            if [[ "$filename" == *".py" ]]; then
                mv "$content" "./nc-filesystem/code/python/katas"
            fi
            if [[ "$filename" == *".go" ]]; then
                mv "$content" "./nc-filesystem/code/go/katas"
            fi
            if [[ "$filename" == *".ts" ]]; then
                mv "$content" "./nc-filesystem/code/typescript/katas"
            fi
        fi

        if [[ "$filename" == *".js" ]]; then
            mv "$content" "./nc-filesystem/code/javascript/katas"
        fi
        if [[ "$filename" == *".py" ]]; then
            mv "$content" "./nc-filesystem/code/python/katas"
        fi
        if [[ "$filename" == *".go" ]]; then
            mv "$content" "./nc-filesystem/code/go/katas"
        fi
        if [[ "$filename" == *".ts" ]]; then
            mv "$content" "./nc-filesystem/code/typescript/katas"
        fi
    fi

done