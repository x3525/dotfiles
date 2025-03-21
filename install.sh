#!/bin/bash

if [ "$(id -u)" -eq 0 ]
then
    echo "Privileged access is not allowed!"
    exit 1
fi

# Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Oh My Zsh Plugins
git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/plugins/zsh-syntax-highlighting

# Powerlevel10k Theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"

cp -r homedir/. ~

# Build font information cache files
fc-cache -fv

rfkill block bluetooth

systemctl --user enable battery-notification.timer
