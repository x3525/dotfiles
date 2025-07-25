unalias -a
alias -g ...=../..
alias -g ....=../../..
alias -g .....=../../../..
alias -g ......=../../../../..
alias cat='bat --plain --plain --theme="Solarized (dark)"'
alias grep='grep --color=auto'
alias history='fc -i -l 1'
alias history_clear='print -n -u 2 >| "$HISTFILE" && fc -p "$HISTFILE"'
alias la='ls --color=tty -l --human-readable --all'
alias ll='ls --color=tty -l --human-readable'
alias ls='ls --color=tty'
alias xc='xsel --clipboard --input'
alias xp='xsel --clipboard --output'
