#!/bin/bash

echo

threshold=0.5
usage=$(df -h | grep / | awk '{print $5}' | sed 's/%//')

if [ $usage -gt $threshold ]
then
echo "Data report $(date)"
echo "Disk usage is above $threshold%! , Current : $usage%"
else
echo "Disk usage normal : $usage%"
fi


echo "from vikki"

