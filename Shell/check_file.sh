#!/bin/bash

# Check if a filename argument is provided
if [ $# -eq 0 ]; then
    echo "❌ Error: No filename provided."
    echo "Usage: $0 <filename>"
    exit 1
fi

FILENAME="$1"

# Check if the file exists and is readable
if [ -f "$FILENAME" ] && [ -r "$FILENAME" ]; then
    if [ ! -s "$FILENAME" ]; then
        echo "⚠️  Warning: File '$FILENAME' exists but is empty."
    else
        echo "✅ File '$(realpath "$FILENAME")' found. Displaying content:"
        cat "$FILENAME"
    fi
else
    echo "❌ Error: File '$FILENAME' does not exist or is not readable."
    exit 1
fi
