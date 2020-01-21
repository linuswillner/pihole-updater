#!/bin/bash
# Log directory creator script

set -e

# Store current user so that user will get changed to non-root
CURRENT_USER=$USER
LOG_DIR=/var/log/pihole-updater

sudo mkdir $LOG_DIR
sudo chown $CURRENT_USER:$CURRENT_USER $LOG_DIR

if [ $? -eq 0 ]
then
  echo "Successfully created log directory $LOG_DIR"
  exit 0
else
  echo "Could not create log directory $LOG_DIR"
  exit 1
fi
