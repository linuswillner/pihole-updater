#!/bin/bash
# Full software update script

set -e

EMAIL=$(cat PIHOLE_UPDATER_EMAIL | xargs)
LOG_FILE="/var/log/pihole-updater/full-update_$(date +%Y-%m-%d-%H-%M-%S).log"

pihole -up > $LOG_FILE

if [ $? -eq 0 ]
then
  echo "Successfully updated Pi-hole"
  mail -s "Pi-hole Update Success" $EMAIL < $LOG_FILE
  exit 0
else
  echo "Error updating Pi-hole"
  mail -s "Pi-hole Update Failure" $EMAIL < $LOG_FILE
  exit 1
fi
