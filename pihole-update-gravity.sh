#!/bin/bash
# Gravity filter list update script

set -e

EMAIL=$(cat PIHOLE_UPDATER_EMAIL | xargs)
LOG_FILE="/var/log/pihole-updater/gravity-update_$(date +%Y-%m-%d-%H-%M-%S).log"

pihole -g -up > $LOG_FILE

if [ $? -eq 0 ]
then
  echo "Successfully updated Pi-hole Gravity"
  mail -s "Pi-hole Gravity Update Success" $EMAIL < $LOG_FILE
  exit 0
else
  echo "Error updating Pi-hole Gravity"
  mail -s "Pi-hole Gravity Update Failure" $EMAIL < $LOG_FILE
  exit 1
fi
