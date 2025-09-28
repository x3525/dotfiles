#!/bin/bash

if [ "$(id -u)" -eq 0 ]
then
    echo "Privileged access is not allowed!"
    exit 1
fi

cp -r -- .[!g]* ~

# Enable timers
systemctl --user enable battery-notification.timer
