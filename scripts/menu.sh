#!/bin/bash

# Function to prompt user for choice and provide feedback
prompt_choice() {
    echo "Which would you choose: $1?"
    read choice

    case $choice in
        "pizza")
            echo "Great choice. Enjoy your pizza!";;
        "burger")
            echo "Great choice. Enjoy your burger!";;
        "coffee")
	echo "What kind of coffee? (e.g. green, black, herbal)"
		read coffee_type
		echo "Great choice. Enjoy your $coffee_type coffee!";;
        "tea")
	echo "What kind of tea? (e.g., milk, milk+herb, herbal)"
		read tea_type
		echo "Great choice. Enjoy your $tea_type tea!";;
        "ice cream")
            echo "Great choice. Enjoy your ice cream!";;
        *)
            echo "That's not an option. Please choose from pizza, burger, coffee, tea, or ice cream.";;
    esac
}

# List of items
items="pizza burger coffee tea ice cream"

# Main loop to prompt user for choice
# Main loop to prompt user for choice
while true; do
    prompt_choice "$items"
    echo "Would you like to choose another item? (yes/no)"
    read answer
    if [ "$answer" = "no" ]; then
        echo "Thank you for trying my menu!"
        break
    else
        continue
    fi
done

