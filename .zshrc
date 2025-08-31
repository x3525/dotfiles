for p in /usr/share/zsh/plugins/*/*.plugin.zsh
do
    . "$p"
done; unset p

for c in "$HOME"/.zsh/*.zsh
do
    . "$c"
done; unset c

eval "$(oh-my-posh init zsh -c ~/.oh-my-posh/themes/custom.omp.json)"
