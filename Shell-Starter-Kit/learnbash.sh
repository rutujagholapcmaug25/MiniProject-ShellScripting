#!/bin/bash
# Shell Starter Kit - Main Menu with Logging

# Set log file
LOGFILE=~/bash_learning_project/Shell-Starter-Kit/logs/actions.log
mkdir -p ~/bash_learning_project/Shell-Starter-Kit/logs

# Function to log actions
log_action() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOGFILE"
}

while true; do
    echo "=============================="
    echo "       Shell Starter Kit       "
    echo "=============================="
    echo "1. File Management"
    echo "2. Directory Management"
    echo "3. Copy & Move Files"
    echo "4. Permissions & Ownership"
    echo "5. File Searching"
    echo "6. System Information"
    echo "7. Contact Database"
    echo "8. Exit"
    echo "=============================="
    read -p "Choose an option: " choice

    case $choice in
        1) bash modules/file_management.sh
           log_action "Opened File Management module" ;;
        2) bash modules/dir_management.sh
           log_action "Opened Directory Management module" ;;
        3) bash modules/copy_move.sh
           log_action "Opened Copy & Move module" ;;
        4) bash modules/permissions.sh
           log_action "Opened Permissions module" ;;
        5) bash modules/search.sh
           log_action "Opened File Search module" ;;
        6) bash modules/sysinfo.sh
           log_action "Opened System Information module" ;;
        7) bash modules/contacts.sh
           log_action "Opened Contact Database module" ;;
        8) echo "Goodbye!"
           log_action "Exited Shell Starter Kit"
           exit 0 ;;
        *) echo "Invalid choice, try again!"
           log_action "Invalid choice in main menu" ;;
    esac
done

