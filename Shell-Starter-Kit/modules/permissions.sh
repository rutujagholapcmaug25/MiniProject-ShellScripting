#!/bin/bash
# Permissions Module

# Set log file
LOGFILE=~/bash_learning_project/Shell-Starter-Kit/logs/actions.log
mkdir -p ~/bash_learning_project/Shell-Starter-Kit/logs

# Function to log actions
log_action() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOGFILE"
}



echo "---- File Permissions ----"
echo "1. View Permissions"
echo "2. Change Permissions"
read -p "Choose: " choice

case $choice in
    1) read -p "Enter file name: " fname
       ls -l "$fname"
       log_action "Viewed permissions of: $fname" ;;
    2) read -p "Enter file name: " fname
       read -p "Enter permission code (e.g. 755): " perms
       chmod "$perms" "$fname"
       echo "Permissions updated."
       log_action "Changed permissions of $fname to $perms" ;;
    *) echo "Invalid choice!"
       log_action "Invalid option in permissions module" ;;
esac

