#!/bin/bash
# Shell Starter Kit 

# Define log file
LOGFILE=~/bash_learning_project/logs/actions.log
mkdir -p ~/bash_learning_project/logs

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
        1) bash modules/file_management.sh ;;
        2) bash modules/dir_management.sh ;;
        3) bash modules/copy_move.sh ;;
        4) bash modules/permissions.sh ;;
        5) bash modules/search.sh ;;
        6) bash modules/sysinfo.sh ;;
        7) bash modules/contacts.sh ;;
        8) echo "Goodbye!"; exit 0 ;;
        *) echo "Invalid choice, try again!" ;;
    esac
done


