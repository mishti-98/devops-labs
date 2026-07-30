#!/bin/bash

echo "===== HEALTH DASHBOARD ======"
host_name=$(hostname)

current_date_time=$(date)

logged_in_user=$(whoami)

echo "Host name: $host_name"
echo "Date and Time: $current_date_time"
echo "Current User: $logged_in_user"


