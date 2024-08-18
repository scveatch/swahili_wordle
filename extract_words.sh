#!/bin/bash

# Input file name
input_file="/home/spencer/projects/swahili_wordle/swa_wikipedia_2021_10K/swa_wikipedia_2021_10K-words.txt"

# Output file name
output_file="five_letter_words.txt"

# Use grep with the regex to extract 5-letter words and save to output file
grep -oP '^\d+\s+\K(\b[a-zA-Z]{5}\b)(?=\s+\d+$)' "$input_file" > "$output_file"

echo "5-letter words have been extracted and saved to $output_file"
