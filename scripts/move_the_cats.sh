#!/opt/homebrew/bin/bash

counter=1

while read filepath; do
    mv $filepath ./cat-pics/cat$counter.jpeg
    ((counter++))
done < ./scripts/cat-pics.txt