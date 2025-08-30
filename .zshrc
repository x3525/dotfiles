for p in /usr/share/zsh/plugins/*/*.plugin.zsh
do
    source "$p"
done

unset p

for c in "$HOME"/.zsh/*.zsh
do
    source "$c"
done

unset c

eval "$(oh-my-posh init zsh -c ~/.oh-my-posh/themes/custom.omp.json)"
