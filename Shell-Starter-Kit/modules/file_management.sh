#!/bin/bash
# File Management Module

# Set log file
LOGFILE=~/bash_learning_project/Shell-Starter-Kit/logs/actions.log
mkdir -p ~/bash_learning_project/Shell-Starter-Kit/logs

# Function to log actions
log_action() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOGFILE"
}


echo "---- File Management ----"
echo "1. Create File"
echo "2. Delete File"
echo "3. View File Content"
read -p "Choose: " choice

case $choice in
    1) read -p "Enter file name: " fname
       touch "$fname"
       echo "File $fname created."
       log_action "Created file: $fname" ;;
    2) read -p "Enter file name: " fname
       rm -f "$fname"
       echo "File $fname deleted."
       log_action "Deleted file: $fname" ;;
    3) read -p "Enter file name: " fname
       if [[ -f "$fname" ]]; then
          cat "$fname"
          log_action "Viewed file: $fname"
       else
          echo "File does not exist."
          log_action "Tried to view non-existent file: $fname"
       fi ;;
    *) echo "Invalid choice!"
       log_action "Invalid option in file management" ;;
esac

