#!/bin/bash

# Define output file
OUTPUT_FILE="process_list.txt"

# List all running processes and write to file
ps aux >"$OUTPUT_FILE"

# Print success message
echo "✅ Process list saved to $OUTPUT_FILE"
