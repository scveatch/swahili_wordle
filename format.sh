#!/bin/bash

# Check if input file is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <input_file>"
    exit 1
fi

# input file name from command line argument
input_file="$1"

# Output file name
output_file="formated_words.txt"

# Check if input file exists
if [ ! -f "$input_file" ]; then
    echo "Error: Input file '$input_file' not found."
    exit 1
fi

# Process the file:
# 1. Convert to lowercase
# 2. Sort and remove duplicates
# 3. Add quotes around each word
# 4. Join with commas
# 5. Add square brackets
# 6. Save to output file
(
    echo -n "["
    tr '[:upper:]' '[:lower:]' < "$input_file" | 
    sort -u | 
    sed 's/^/"/; s/$/"/' | 
    paste -sd "," -
    echo -n "]"
) > "$output_file"

echo "Words have been processed and formatted. Result saved to $output_file"
