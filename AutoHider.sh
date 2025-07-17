#!/bin/bash

WATCH_DIR="${1:-.}"

# Hide all existing .asd files at startup
find "$WATCH_DIR" -type f -name "*.asd" -exec chflags hidden {} \;

fswatch -0 -r "$WATCH_DIR" | while IFS= read -r -d "" file
do
    if [[ "$file" == *.asd ]]; then
        echo "Hiding $file"
        chflags hidden "$file"
    fi
done