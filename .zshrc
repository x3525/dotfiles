for plugin in /usr/share/zsh/plugins/*/*.plugin.zsh
do
    source "$plugin"
done
unset plugin

for config in "$HOME"/.zsh/*.zsh
do
    source "$config"
done
unset config

eval "$(oh-my-posh init zsh -c ~/.oh-my-posh/themes/custom.omp.json)"
