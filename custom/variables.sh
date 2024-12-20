# tokens

# Increase Bash history size
HISTSIZE=10000000
HISTFILESIZE=10000000

# Ignore specific commands from history
HISTIGNORE="ls:cd:pwd:exit:*ls *:*cd *:*pwd *:*exit *"

# Prevent duplicate entries and ignore commands starting with a space
HISTCONTROL=ignoredups:erasedups

# Append to the history file, don't overwrite it
shopt -s histappend

# Include timestamps in history
export HISTTIMEFORMAT="%F %T "
