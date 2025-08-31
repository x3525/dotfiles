for p in /usr/share/zsh/plugins/*/*.plugin.zsh
do
    . "$p"
done; unset p

for f in "$HOME"/.zsh/*.zsh
do
    . "$f"
done; unset f

eval "$(oh-my-posh init zsh -c ~/.oh-my-posh/themes/custom.omp.json)"
