#!/bin/bash
# Copy & Move Module
# Set log file
LOGFILE=~/bash_learning_project/Shell-Starter-Kit/logs/actions.log
mkdir -p ~/bash_learning_project/Shell-Starter-Kit/logs

# Function to log actions
log_action() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOGFILE"
}


echo "---- Copy & Move ----"
echo "1. Copy File"
echo "2. Move File"
read -p "Choose: " choice

case $choice in
    1) read -p "Enter source file: " src
       read -p "Enter destination: " dest
       cp "$src" "$dest" 2>/dev/null
       echo "File copied."
       log_action "Copied file: $src -> $dest" ;;
    2) read -p "Enter source file: " src
       read -p "Enter destination: " dest
       mv "$src" "$dest" 2>/dev/null
       echo "File moved."
       log_action "Moved file: $src -> $dest" ;;
    *) echo "Invalid choice!"
       log_action "Invalid option in copy/move module" ;;
esac

