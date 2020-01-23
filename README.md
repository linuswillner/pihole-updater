# pihole-updater

A tiny script I built to automatically keep Pi-hole updated on my Raspberry Pi.

## Scripts

- `pihole-update-gravity.sh`: Runs Gravity update
- `pihole-update-full.sh`: Runs Pi-hole software update

## Installation

```bash
git clone https://github.com/linuswillner/pihole-updater.git
cd pihole-updater
chmod +x *.sh
./pihole-update-logprep.sh
```

It's important you run `pihole-update-logprep.sh` to create the logging directory for the updates (`/var/log/pihole-updater`) with appropriate permissions.

## Prerequisites

[Exim4](https://wiki.debian.org/Exim) must be properly set up the server if email notifications need to be sent to external hosts (`sudo dpkg-reconfigure exim4-config` > Internet).

Edit `PIHOLE_UPDATER_EMAIL` to define the email to which to send update success and failure notifications.

## Usage

You can set these scripts to run in [cron](http://man7.org/linux/man-pages/man5/crontab.5.html) at any time you see fit (`crontab -e`). If using cron, you will have to set the `PATH` variable either per-script or for the entire crontab to match the system environment. See https://askubuntu.com/a/23438 for more information.
