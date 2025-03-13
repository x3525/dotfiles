#!/bin/bash

if [ "$(id -u)" -eq 0 ]
then
    echo "Need an unprivileged user to run!"
    exit 1
fi

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Download Oh My Zsh plugins
git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/plugins/zsh-syntax-highlighting

# Download Powerlevel10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"

# Copy files
cp -r dotfiles/. ~

# Build font information cache files
fc-cache -fv

# Enable the corresponding devices
rfkill unblock wlan

# Disable the corresponding devices
rfkill block bluetooth

# Enable timers
systemctl --user enable battery-notification.timer
