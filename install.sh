#!/bin/bash

if [ "$(id -u)" -eq 0 ]
then
    echo "Privileged access is not allowed!"
    exit 1
fi

rfkill block bluetooth

# Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# shellcheck disable=SC1090
. <(head -n "$(grep -n ZSH= ~/.zshrc | cut -c 1)" ~/.zshrc)

# Oh My Zsh Plugins
git clone https://github.com/zsh-users/zsh-autosuggestions.git "$ZSH"/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$ZSH"/plugins/zsh-syntax-highlighting

# Oh My Posh
curl -s https://ohmyposh.dev/install.sh | bash -s

cp -r .[!g]* ~

# Build font information cache files
fc-cache -fv

systemctl --user enable battery-notification.timer
