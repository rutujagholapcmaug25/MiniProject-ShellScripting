#!/bin/bash
# Directory Management Module

# Set log file
LOGFILE=~/bash_learning_project/Shell-Starter-Kit/logs/actions.log
mkdir -p ~/bash_learning_project/Shell-Starter-Kit/logs

# Function to log actions
log_action() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOGFILE"
}

echo "---- Directory Management ----"
echo "1. Create Directory"
echo "2. Delete Directory"
echo "3. List Directory Contents"
read -p "Choose: " choice

case $choice in
    1) 
        read -p "Enter directory name: " dname
        mkdir -p "$dname"
        echo "Directory $dname created."
        log_action "Created directory: $dname"
        ;;
    2) 
        read -p "Enter directory name: " dname
        rm -rf "$dname"
        echo "Directory $dname deleted."
        log_action "Deleted directory: $dname"
        ;;
    3) 
        read -p "Enter directory name: " dname
        if [[ -d "$dname" ]]; then
            ls "$dname"
            log_action "Listed contents of directory: $dname"
        else
            echo "Directory does not exist."
            log_action "Tried to list non-existent directory: $dname"
        fi
        ;;
    *) 
        echo "Invalid choice!"
        log_action "Invalid option in directory management"
        ;;
esac

