#!/bin/bash

if [ "$(id -u)" -eq 0 ]
then
    echo "Privileged access is not allowed!"
    exit 1
fi

# Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Oh My Zsh Plugins
git clone https://github.com/zsh-users/zsh-autosuggestions.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"/plugins/zsh-syntax-highlighting

# Oh My Posh
curl -s https://ohmyposh.dev/install.sh | bash -s

cp -r -- .[!g]* ~

# Build font information cache files
fc-cache -fv

systemctl --user enable --now battery-notification.timer
