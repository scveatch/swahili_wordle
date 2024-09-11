#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <input_file>"
    exit 1
fi

# input file name from command line argument
input_file="$1"

# Output file name
output_file="five_letter_words.txt"

# Use grep with the regex to extract 5-letter words and save to output file
grep -oP '^\d+\s+\K(\b[a-zA-Z]{5}\b)(?=\s+\d+$)' "$input_file" > "$output_file"

echo "5-letter words have been extracted and saved to $output_file"
