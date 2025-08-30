bindkey -e

bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word
bindkey '^[[3;5~' kill-word
bindkey '^[[3~' delete-char
bindkey '^[[5~' up-line-or-beginning-search
bindkey '^[[6~' down-line-or-beginning-search
bindkey '^[[A' up-line-or-beginning-search
bindkey '^[[B' down-line-or-beginning-search
bindkey '^[[F' end-of-line
bindkey '^[[H' beginning-of-line
bindkey '^[[Z' reverse-menu-complete
bindkey '^[OA' up-line-or-beginning-search
bindkey '^[OB' down-line-or-beginning-search
bindkey '^[OF' end-of-line
bindkey '^[OH' beginning-of-line
