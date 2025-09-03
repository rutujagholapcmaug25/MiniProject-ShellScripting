#!/bin/bash
# Simple Contact Database with Logging

# Set log file
LOGFILE=~/bash_learning_project/Shell-Starter-Kit/logs/actions.log
mkdir -p ~/bash_learning_project/Shell-Starter-Kit/logs

# Function to log actions
log_action() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOGFILE"
}

CONTACTS_FILE="data/contacts.txt"

echo "---- Contact Database ----"
echo "1. Add Contact"
echo "2. View Contacts"
read -p "Choose: " choice

case $choice in
    1) read -p "Enter Name: " name
       read -p "Enter Phone: " phone
       echo "$name - $phone" >> $CONTACTS_FILE
       echo "Contact saved."
       log_action "Added contact: $name - $phone" ;;
    2) cat $CONTACTS_FILE
       log_action "Viewed contacts list" ;;
    *) echo "Invalid choice!"
       log_action "Invalid option selected in contacts module" ;;
esac

