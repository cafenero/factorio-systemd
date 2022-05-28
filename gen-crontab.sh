#!/bin/bash

SAVE_F_BIN=$(realpath ./rsync-factorio-data.sh)
crontab -l | grep $SAVE_F_BIN > /dev/null
if [ ! $? == 0 ]; then
    crontab -l > tmp.cron
    echo "30 11 * * * bash $SAVE_F_BIN" >> tmp.cron
    crontab < tmp.cron
    rm tmp.cron
fi
echo "crontab -l"
crontab -l
