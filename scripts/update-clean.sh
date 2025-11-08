#!/bin/bash
LOG="$HOME/wipro-capstone/logs/update.log"

{
    echo "===== System Update Started: $(date) ====="
    sudo apt update -y && sudo apt upgrade -y
    sudo apt autoremove -y && sudo apt autoclean -y
    echo "===== System Update Completed: $(date) ====="
} >> "$LOG" 2>&1

echo "System updated and cleaned successfully. Check $LOG for details."
