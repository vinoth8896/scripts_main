#!/bin/bash

USAGE=$(df -h | grep /mnt/c | awk '{print $5}' | tr -d '%')

DISK=$(df -h | grep /mnt/c | awk '{print $1}' | tr -d '%')

USED=$(df -h | grep /mnt/c | awk '{print $3}' | tr -d '%')

if [ "$USAGE" -ge 85 ]; then
	echo "$DISK - DISK IS FULL - TOTAL UTILIZED - $USED" >> /var/log/diskMonitor.log
fi
