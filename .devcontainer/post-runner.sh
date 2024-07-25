#!/bin/bash

# Specify the directory to search for .sh files
DIRECTORY=".devcontainer/scripts"

# Find all .sh files in the specified directory and run them
for script in "$DIRECTORY"/*.sh; do
    if [[ -f $script ]]; then
        echo "Running $script..."
        bash "$script"
    else
        echo "No .sh files found in $DIRECTORY."
    fi
done