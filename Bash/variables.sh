#!/bin/bash

# Define variables
greeting="Hello"
name="Mohammed"
exclamation="!"

# Use variables in an echo command
echo "$greeting, $name$exclamation"

# You can reuse these in multiple different ways

echo "$greeting$exclamation, $name.. what can i do for you?"

# Can further define variables and use them later on

second_greeting="Salam!"
second_name="Adam"

echo "$greeting$exclamation, $second_name.."