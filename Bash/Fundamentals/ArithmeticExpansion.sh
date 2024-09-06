#!/bin/bash

# Check if exactly two parameters are passed to the script
# "$#" gives the number of arguments passed
# "-ne 2" checks if the number of arguments is not equal to 2
if [ $# -ne 2 ]; then
  echo "Usage: $0 <number1> <number2>"
  exit 1  # Exit the script with an error code 1 if the check fails
fi

# Assign the first and second parameters to variables
num1=$1
num2=$2

# Perform arithmetic operations using arithmetic expansion
# The $(( ... )) syntax is used to evaluate arithmetic expressions

sum=$((num1 + num2))            # Addition
difference=$((num1 - num2))     # Subtraction
product=$((num1 * num2))        # Multiplication

# To avoid division by zero, we check if the second number is not zero
if [ $num2 -ne 0 ]; then
  quotient=$((num1 / num2))     # Division
else
  quotient="undefined (division by zero)"  # Handle division by zero
fi

# Display the results using echo
echo "Results for numbers $num1 and $num2:"
echo "Sum: $sum"
echo "Difference: $difference"
echo "Product: $product"
echo "Quotient: $quotient"

