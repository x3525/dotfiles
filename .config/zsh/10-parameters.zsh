# The file to save the history in when an interactive shell exits.
# If unset, the history is not saved.
export HISTFILE="$HOME/.zsh_history"

# The maximum number of events stored in the internal history list. If you use
# the HIST_EXPIRE_DUPS_FIRST option, setting this value larger than the SAVEHIST
# size will give you the difference as a cushion for saving duplicated history events.
# If this is made local, it is not implicitly set to 0, but may be explicitly set locally.
export HISTSIZE=100000

# When the PROMPT_CR and PROMPT_SP options are set, the PROMPT_EOL_MARK
# parameter can be used to customize how the end of partial lines are shown.
# This parameter undergoes prompt expansion, with the PROMPT_PERCENT option set.
export PROMPT_EOL_MARK='%K{yellow} %k'

# The maximum number of history events to save in the history file.
# If this is made local, it is not implicitly set to 0, but may be explicitly set locally.
export SAVEHIST=100000

# A list of non-alphanumeric characters considered part of a word by the line editor.
export WORDCHARS=
