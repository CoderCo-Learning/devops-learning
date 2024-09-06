!/bin/bash

FILE="log.txt"

if [[ -f "$FILE" ]]; then
    echo "The file exists $FILE":
    exit 0
else  
    echo "File doesnt exist"
    exit 1
fi


# checking if something (Git) exists within dev/null
command -v git 2>/dev/null

if [[ $? -ne 0 ]]; then
    echo "Git is not installed"
    exit 1
else
    echo "Git is intalled"
    exit 2
fi