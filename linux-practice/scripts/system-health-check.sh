#!/bin/bash

echo "===================================="
echo "       SYSTEM HEALTH CHECK"
echo "===================================="

echo ""
echo "Hostname:"
hostname

echo ""
echo "Date:"
date

echo ""
echo "Uptime:"
uptime

echo ""
echo "Disk Usage:"
df -h /

echo ""
echo "Memory Usage:"
free -h

echo ""
echo "CPU Load:"
uptime | awk -F'load average:' '{ print $2 }'

echo ""
echo "Running Processes:"
ps aux --sort=-%cpu | head -6

echo ""
echo "Listening Ports:"
ss -lnt | head

echo ""
echo "===================================="
echo "       HEALTH CHECK COMPLETED"
echo "===================================="
