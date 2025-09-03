#!/bin/bash
# System Information Module

# Set log file
LOGFILE=~/bash_learning_project/Shell-Starter-Kit/logs/actions.log
mkdir -p ~/bash_learning_project/Shell-Starter-Kit/logs

# Function to log actions
log_action() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOGFILE"
}


echo "---- System Information ----"
uname -a
df -h
free -m

log_action "Viewed system information"

