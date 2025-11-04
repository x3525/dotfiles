for p in /usr/share/zsh/plugins/*/*.plugin.zsh
do
    . "$p"
done; unset p

for f in "$XDG_CONFIG_HOME"/zsh/*.zsh(n)
do
    . "$f"
done; unset f

export EDITOR=vim
export VISUAL=vim

PROMPT='%F{blue}%(1j.%U%0~%u.%0~)%f%(0?.%F{cyan}%(!.#.$)%f.%F{red}%(!.#.$)%f) '
