#!/bin/bash

if [ "$(command id -u)" -eq 0 ]
then
    command echo "Privileged access is not allowed!"
    exit 1
fi

command cp -r -- .[!g]* ~

# Enable timers
command systemctl --user enable battery-notification.timer
