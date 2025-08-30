zstyle ':completion:*' list-colors \
    "${(s.:.)LS_COLORS}"
zstyle ':completion:*' matcher-list \
    'r:|=*' \
    'l:|=* r:|=*'
zstyle ':completion:*' menu \
    select
zstyle ':completion:*' special-dirs \
    true
zstyle ':completion:*' use-cache \
    yes
