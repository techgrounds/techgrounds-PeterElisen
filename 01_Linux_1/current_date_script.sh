#!/bin/bash

# Get the current date and time
current_date=$(date)

# Specify the file path
file_path="$HOME/current_date.txt"

# Write the date and time to the file
echo "$current_date" > "$file_path"

# Display a success message
echo "Current date and time written to $file_path"