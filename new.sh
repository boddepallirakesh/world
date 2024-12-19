#!/bin/bash

# Disk Usage Monitoring Script

# Set the threshold for disk usage (in percentage)
THRESHOLD=80

# Get the current disk usage percentage for the root filesystem
CURRENT_USAGE=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')

# Check if the current usage exceeds the threshold
if [ "$CURRENT_USAGE" -gt "$THRESHOLD" ]; then
  # Send an alert (you can modify this to send an email or other notification)
  echo "Warning: Disk usage is above ${THRESHOLD}% on the root filesystem." | mail -s "Disk Usage Alert" user@example.com
  echo "Disk usage is at ${CURRENT_USAGE}%. Alert has been sent."
else
  echo "Disk usage is at ${CURRENT_USAGE}%, which is below the threshold."
fi
