# !bin/bash

# Print date on the CLI
echo "Today's date is:" && date

# Print the user name
echo "You are logged in as:" && echo $USER

# Print the pwd
echo "Your current working directory is" && pwd



# Recieving input
# Defining variables

fullname="USER INPUT"
country="USER INPUT"
language="USER INPUT"

# Function declarations

enter_details () {
			read -p "Enter fullname: " fullname
			read -p "Where do you come from? " country
			read -p "What language do you speak? " language
}

validate () {
	echo "Please confirm, your name is: " $fullname && echo "you come from: " $country && echo "and you Speak: " $language
}



# Function calls

enter_details
validate


# Verify user input to correct or confirm

read -p "Correct? (Y/N): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || enter_details
