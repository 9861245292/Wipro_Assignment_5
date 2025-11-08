#!/bin/bash
LOG="$HOME/wipro-capstone/logs/logwatch.log"
SYSLOG="/var/log/syslog"

echo "Scanning logs for warnings or errors..." > "$LOG"
grep -i "error\|fail\|warning" "$SYSLOG" >> "$LOG"

if [ -s "$LOG" ]; then
    echo "⚠️ Issues found. Check $LOG for details."
else
    echo "✅ No issues found."
fi
