#!/bin/bash -xe

SAVE_PATH=/Users/yusuke/ghq/github.com/cafenero/factorio-systemd/save-data-backup
RSYNC=/usr/local/bin/rsync

if [ ! -d $SAVE_PATH ]; then
   mkdir save-data-backup
fi

pushd $SAVE_PATH
$RSYNC -av amd02.cafenero.info:/home/factorio/2022-new01.zip .
mv 2022-new01.zip 2022-new01.zip-backup-$(date +%Y%m%d-%H%M%S).zip
popd
