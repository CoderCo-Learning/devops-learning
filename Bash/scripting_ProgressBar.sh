#!/bin/bash

# Function to display a progress bar
show_progress() {
  local progress=0
  local total=100
  local bar=''

  while [ $progress -le $total ]; do
    # Calculate the number of completed blocks in the progress bar
    local completed=$((progress / 2))
    bar=$(printf "%-${completed}s" "#")

    # Display the progress bar
    printf "\r[%-50s] %d%%" "$bar" "$progress"

    # Sleep for a short duration to simulate progress
    sleep 0.1

    # Increment progress
    progress=$((progress + 2))
  done

  echo -e "\nDone!"
}

# Run the progress bar
show_progress
