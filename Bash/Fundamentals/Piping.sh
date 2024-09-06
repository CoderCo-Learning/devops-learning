#!/bin/bash

get_file_count(){
    local directory="$1"
    local file_count
    
    file_count=$(ls "$directory" | wc -l)

    echo "Number of files in the $directory: $file_count"
}

get_file_count "./"