#!/bin/bash

# Countdown script

# Prompt the user to enter the start number for the countdown
echo "Enter the start number for the countdown:"
read start_num

# Check if the entered number is positive
if [[ $start_num -lt 0 ]]; then
    echo "Please enter a non-negative integer."
    exit 1  # Exit the script if the number is negative
fi

# Initialise a counter with the start number
counter=$start_num

# Start the countdown using a while loop
while [[ $counter -ge 0 ]]; do
    echo "Countdown:"
    echo "$counter"  # Print the current counter value on a new line
    
    if [[ $counter -eq 0 ]]; then
        echo "Blast off!"
    fi

    counter=$(( counter - 1 ))  # Decrement the counter by 1
    
    # Wait for 1 second before the next iteration
    sleep 1
done

# Final message after the countdown ends
echo "Countdown finished."
