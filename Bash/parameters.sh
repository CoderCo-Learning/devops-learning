#!/bin/bash

# Check if two parameters are passed
# "$#" gives the number of arguments passed to the script
# "-ne 2" means "not equal to 2"
# So this if statement checks if the number of arguments is not equal to 2
if [ $# -ne 2 ]; then
  # If the condition is true (i.e., not exactly 2 arguments were passed), print a usage message
  echo "Usage: $0 <name> <favorite_colour>"
  
  # Exit the script with a status of 1 to indicate an error
  exit 1
fi

# Assign the first parameter to the 'name' variable
name=$1

# Assign the second parameter to the 'colour' variable
colour=$2

# Create a personalised message using the variables
message="Hello, $name! Your favorite colour is $colour."

# Display the personalised message
echo "$message"

# Additional message based on the colour chosen by the user
if [ "$colour" == "blue" ]; then
  # This message is displayed if the user's favorite colour is blue
  echo "Blue is a calming colour!"
elif [ "$colour" == "red" ]; then
  # This message is displayed if the user's favorite colour is red
  echo "Red is a bold choice!"
else
  # This message is displayed for any other colour
  echo "$colour is a great colour!"
fi

