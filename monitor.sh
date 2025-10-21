#!/bin/bash

#Script to check system health

echo "Health Report $(date)"
echo
echo "Cpu load"
uptime
echo 
echo "Memory Usage"
free -h
echo
echo "Disk Usage"
df -h | grep "/dev/"
echo
echo "Processes:"
echo
ps aux --sort=-%mem | head -n 5
