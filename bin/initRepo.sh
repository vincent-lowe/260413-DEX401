#!/bin/bash

# 1. Check if an argument was provided
if [ -z "$1" ]; then
    echo "Usage: $0 <template_file>"
    exit 1
fi

TEMPLATE_FILE="$1.md"

# 2. Check if the file exists
if [ ! -f "$TEMPLATE_FILE" ]; then
    echo "Error: File '$TEMPLATE_FILE' not found."
    exit 1
fi

TARGET_README="README.md"

# 4. Perform the overwrite
# Using 'cp' to overwrite the README.md in the same directory
cp "$TEMPLATE_FILE" "$TARGET_README"

if [ $? -eq 0 ]; then
    echo "Success: '$TARGET_README' has been updated using '$TEMPLATE_FILE'."
else
    echo "Error: Failed to copy the file."
    exit 1
fi