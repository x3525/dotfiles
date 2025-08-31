#!/bin/bash

if [ "$(id -u)" -eq 0 ]
then
    command echo "Privileged access is not allowed!"
    exit 1
fi

# Oh My Posh
command curl -s https://ohmyposh.dev/install.sh | command bash -s

command cp -r -- .[!g]* ~

# Build font information cache files
command fc-cache -fv

# Enable timers
command systemctl --user enable battery-notification.timer
