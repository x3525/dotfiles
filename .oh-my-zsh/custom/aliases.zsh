unalias -a
alias -g ...=../..
alias -g ....=../../..
alias -g .....=../../../..
alias -g ......=../../../../..
alias cat='bat --plain --plain --theme="Solarized (dark)"'
alias destroy='print -n -u 2 >| "$HISTFILE"; fc -p "$HISTFILE"'
alias grep='grep --color=auto'
alias la='ls --color=tty -l --human-readable --all'
alias ll='ls --color=tty -l --human-readable'
alias ls='ls --color=tty'
alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'
