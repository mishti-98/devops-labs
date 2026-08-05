#!/bin/bash

echo "===== LOG ANALYZER ======"
read -p "Enter the log file path:: " log_file

if [ ! -f "$log_file" ]; then
    echo "Error: Log file does not exist."
    exit 
fi

word_count=$(wc -l < "$log_file")
echo "Total lines: $word_count" 

error_count=$(grep -c -i "error" "$log_file")
echo "Error: $error_count"

warning_msg=$(grep -c -i "WARNING" "$log_file")
echo "Warnings: $warning_msg"

info=$(grep -c -i "INFO" "$log_file")
echo "Info: $info"

first_log=$(head -n 1 "$log_file")
echo "First log entry: $first_log"

last_log=$(tail -n 1 "$log_file")
echo "Last log entry: $last_log"

file_size=$(du -h "$log_file")
echo "File size:$file_size"

today's_date=$(date +%Y-%m-%d)
today_log_count=$(grep -c "$today's_date" "$log_file")
echo "Today's log entries: $today_log_count"