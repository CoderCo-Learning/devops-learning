#!/bin/bash

# Prompt  to enter a year and a number
echo "Enter a year:"
read year

echo "Enter a number between 1 and 100:"
read number


# Check if the provided year is a leap year
if (( year % 4 == 0 && year % 100 != 0 )) || (( year % 400 == 0 )); then
    echo "$year is a leap year."
else
    echo "$year is not a leap year."
fi

# Check if the number is within the range 1-100
if [[ $number -ge 1 && $number -le 100 ]]; then
    echo "The number $number is within the range of 1 to 100."
else
    echo "The number $number is out of the range 1 to 100."
fi

# Explain what each part does

# - The leap year check uses both arithmetic expansion ($((...))) and logical operators.
#   A leap year is divisible by 4 but not by 100, unless it's also divisible by 400.
# - The number range check uses the `-ge` (greater than or equal to) and `-le` (less than or equal to) operators
#   to verify that the number falls within the specified range.
