#!/bin/bash

# Function to check file or directory type and perform ls command
file_or_dir_checker() {
    # Prompt the user for the file or directory name
    echo "Enter the name of a file or directory:"
    read file_or_dir

    # Check if the input exists
    if [ ! -e "$file_or_dir" ]; then
        echo "Error: '$file_or_dir' does not exist."
        exit 1
    fi

    # Check the type of the input
    if [ -f "$file_or_dir" ]; then
        echo "'$file_or_dir' is a regular file."
    elif [ -d "$file_or_dir" ]; then
        echo "'$file_or_dir' is a directory."
    else
        echo "'$file_or_dir' is another type of file."
    fi

    # Perform an ls command with long listing option
    ls -l "$file_or_dir"
}

# Call the function to check file or directory
file_or_dir_checker
