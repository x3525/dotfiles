autoload -Uz compinit; compinit
_comp_options+=(globdots)

zstyle ':completion:*' completer \
    _extensions \
    _complete

zstyle ':completion:*' complete-options \
    true
zstyle ':completion:*' squeeze-slashes \
    true



zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "$XDG_CACHE_HOME/zsh/.zcompcache"

zstyle ':completion:*:*:*:*:default' list-colors \
    "${(s.:.)LS_COLORS}"
zstyle ':completion:*' matcher-list \
    'r:|=*' \
    'l:|=* r:|=*'
zstyle ':completion:*' menu \
    select
zstyle ':completion:*' special-dirs \
    true
