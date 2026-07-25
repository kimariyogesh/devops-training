#!/bin/bash

check_disk() {
    local THRESHOLD=$1
    local USAGE=$(df -h / | tail -1 | awk '{print $5}' | tr -d '%')

    if [ $USAGE -gt $THRESHOLD ]; then
        echo "ALERT: Disk at ${USAGE}% (threshold: ${THRESHOLD}%)"
        return 1
    else
        echo "OK: Disk at ${USAGE}%"
        return 0
    fi


}

check_disk 80


