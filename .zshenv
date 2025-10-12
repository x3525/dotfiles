# $XDG_DATA_HOME defines the base directory relative to which user-specific
# data files should be stored. If $XDG_DATA_HOME is either
# not set or empty, a default equal to $HOME/.local/share should be used.
export XDG_DATA_HOME="${XDG_DATA_HOME:-$HOME/.local/share}"

# $XDG_CONFIG_HOME defines the base directory relative to which user-specific
# configuration files should be stored. If $XDG_CONFIG_HOME is either
# not set or empty, a default equal to $HOME/.config should be used.
export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"

# $XDG_STATE_HOME defines the base directory relative to which user-specific
# state files should be stored. If $XDG_STATE_HOME is either
# not set or empty, a default equal to $HOME/.local/state should be used.
export XDG_STATE_HOME="${XDG_STATE_HOME:-$HOME/.local/state}"

# $XDG_CACHE_HOME defines the base directory relative to which user-specific
# non-essential data files should be stored. If $XDG_CACHE_HOME is either
# not set or empty, a default equal to $HOME/.cache should be used.
export XDG_CACHE_HOME="${XDG_CACHE_HOME:-$HOME/.cache}"
