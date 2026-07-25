
#!/bin/bash

echo "Hello this is my first bash script"

# Defining variables

NAME="Yogesh"
AGE="23"
LOG_FILE="/tmp/app.log"
echo "Hello $NAME"
echo "log file is at $LOG_FILE"

CURRENT_DATE=$(date)
DISK_USAGE=$(df -h / | tail -1 | awk '{print $5}')

echo "Date : $CURRENT_DATE"
echo "Disk Usage : $DISK_USAGE"

