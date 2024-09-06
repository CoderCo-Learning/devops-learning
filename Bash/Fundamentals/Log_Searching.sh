#!/bin/bash

search_logs(){

    local search_term="$1"
    grep "$search_term" log.txt | awk '{ print $2,$3}'
}

search_logs "ERROR"