#!/bin/bash

# Check if input file is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <input_file>"
    exit 1
fi

# Input file name from command line argument
input_file="$1"

# Output file name
output_file="five_letter_words_uppercase.txt"

# Check if input file exists
if [ ! -f "$input_file" ]; then
    echo "Error: Input file '$input_file' not found."
    exit 1
fi

# Read the file, convert to uppercase, sort, remove duplicates, and save to output file
tr '[:lower:]' '[:upper:]' < "$input_file" | sort -u > "$output_file"

echo "Words have been converted to uppercase, sorted, and duplicates removed. Result saved to $output_file"
