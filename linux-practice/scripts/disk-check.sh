#!/bin/bash

USAGE=$(df -h / | tail -1 | awk '{print $5}' | tr -d '%')

echo "Disk usage: $USAGE%"

if [ "$USAGE" -ge 80 ]
then
    echo "WARNING: Disk usage is high!"
else
    echo "Disk usage is normal."
fi
