#!/bin/bash

# copy start script
sudo cp factorio-start.sh /usr/local/bin/

# copy unit file
sudo cp factorio.service /etc/systemd/system/

# daemon-relaod/enable/start
sudo systemctl daemon-reload
sudo systemctl enable factorio
sudo systemctl restart factorio
