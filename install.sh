#!/bin/bash

if [ "$(id -u)" -eq 0 ]
then
    echo "Privileged access is not allowed!"
    exit 1
fi

# Oh My Posh
curl -s https://ohmyposh.dev/install.sh | bash -s

cp -r -- .[!g]* ~

# Build font information cache files
fc-cache -fv

# Enable timers
systemctl --user enable battery-notification.timer
