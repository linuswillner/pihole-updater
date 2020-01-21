# pihole-updater

A tiny script I built to automatically keep Pi-hole updated on my Raspberry Pi.

## Scripts

- `pihole-update-gravity.sh`: Runs Gravity update
- `pihole-update-full.sh`: Runs Pi-hole software update

## Installation

```bash
git clone https://github.com/linuswillner/pihole-updater.git
cd pihole-updater
chmod +x pihole-update-logprep.sh
chmod +x pihole-update-gravity.sh
chmod +x pihole-update-full.sh
```
## Prerequisites

[Exim4](https://wiki.debian.org/Exim) must be properly set up the server if email notifications need to be sent to external hosts (`sudo dpkg-reconfigure exim4-config` > Internet).

The log directory needs to be created before running the scripts below.

```bash
./pihole-update-logprep.sh
```

Edit `PIHOLE_UPDATER_EMAIL` to define the email to which to send update success and failure notifications.

## Usage

You can set these scripts to run in [cron](http://man7.org/linux/man-pages/man5/crontab.5.html) at any time you see fit (`crontab -e`).
