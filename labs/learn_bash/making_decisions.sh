#!/bin/bash

DISK_USAGE=$(df -h / | tail -1 | awk '{print $5}' | tr -d '%')

if [ $DISK_USAGE -gt 80 ]; then 
	echo "WARNING : Disk usage is at ${DISK_USAGE}%"
else
	echo "OK : Disk usage is at ${DISK_USAGE}%"
fi

