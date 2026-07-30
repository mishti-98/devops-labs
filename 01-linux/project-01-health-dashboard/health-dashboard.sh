#!/bin/bash

echo "===== HEALTH DASHBOARD ======"
host_name=$(hostname)
disk_usage=$(df -h)
memory_usage=$(free -h)
uptime_info=$(uptime -p)
current_date_time=$(date)

logged_in_user=$(whoami)
    
echo "Host name: $host_name"
echo "=============================="
echo "Disk Usage:"
echo "$disk_usage"

echo "Memory Usage:"
echo "$memory_usage"
echo "=============================="

echo "Uptime: $uptime_info"
echo "Date and Time: $current_date_time"
echo "Current User: $logged_in_user"


