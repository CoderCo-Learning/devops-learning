#!/bin/bash

# Countdown script

# Prompt to enter the start number for the countdown
echo "Enter the start number for the countdown:"
read start_num

# Check if the entered number is positive
if [[ $start_num -lt 0 ]]; then
    echo "Please enter a non-negative integer."
    exit 1  # Exit if the number is negative
fi

# Initialise a counter with the start number
counter=$start_num

# Start the countdown using a while loop
while [[ $counter -ge 0 ]]; do
    echo "Countdown: $counter"  # Display the current counter value

    if [[ $counter -eq 0 ]]; then
        echo "Blast off!"
    fi

    counter=$(( counter - 1 ))  # Decrement the counter by 1
    read -t 1 -p "I am going to wait 1 second each time!"   
    # The read is waiting for a user input which will wait based on a timer
    # The `-t` is setting a timeout and we have set this to 1 second
    # The  `-p` is for prompt message that will be written to the user before waiting for the input

done

# Final message after the countdown ends
echo "Countdown finished."
