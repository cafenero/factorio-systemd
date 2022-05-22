#!/bin/bash -xu

F_HOME=/home/factorio
F_PATH_BIN=$F_HOME/factorio/bin/x64/factorio
F_PATH_SAVE_FILE=$F_HOME/2022-new01.zip
F_PATH_SETTING_FILE=$F_HOME/factorio/data/server-settings.json


$F_PATH_BIN \
--start-server $F_PATH_SAVE_FILE \
--server-settings $F_PATH_SETTING_FILE
