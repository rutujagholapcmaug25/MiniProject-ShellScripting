#!/bin/bash
# Simple Contact Database with Logging

# Set log file
LOGFILE=~/bash_learning_project/Shell-Starter-Kit/logs/actions.log
mkdir -p ~/bash_learning_project/Shell-Starter-Kit/logs

# Function to log actions
log_action() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOGFILE"
}


echo "---- Search ----"
read -p "Enter filename to search: " fname
found=$(find . -name "$fname" 2>/dev/null)

if [[ -n "$found" ]]; then
    echo "File found at: $found"
    log_action "Searched and found file: $fname"
else
    echo "File not found."
    log_action "Searched but did not find file: $fname"
fi

