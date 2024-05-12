#!/bin/bash

# Function to check if the file exists and is readable
checkFileExists() {
    if [ ! -f "$1" ]; then
        echo "Error: File '$1' not found."
        exit 1
    elif [ ! -r "$1" ]; then
        echo "Error: File '$1' is not readable."
        exit 1
    fi
}

# Function to count words in the file
countWords() {
    words=$(cat "$1" | grep -oE '\w+' | wc -w)
    echo "Total words in file '$1': $words"
}

# Function to display the word count
displayCount() {
    echo "$1"
}

# Main function
main() {
    # Check if file path is provided as argument
    if [ "$#" -ne 1 ]; then
        echo "Usage: $0 <file>"
        exit 1
    fi

    file="$1"

    # Check if file exists and is readable
    checkFileExists "$file"

    # Count words in the file
    word_count=$(countWords "$file")

    # Display the word count
    displayCount "$word_count"
}

# Call the main function with command-line argument
main "$@"
