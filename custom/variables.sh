# tokens

# Pip
export PATH="$HOME/.local/bin:$PATH"
# Go binary path
export PATH=$PATH:/usr/local/go/bin
#Set GOPATH, the workspace for Go projects
export GOPATH=$HOME/go
# Add GOPATH/bin path
export PATH=$PATH:$GOPATH/bin

# Increase Bash history size
HISTSIZE=10000000
HISTFILESIZE=10000000
# Ignore specific commands from history
HISTIGNORE="ls:cd:pwd:exit:*ls *:*cd *:*pwd *:*exit *"
# Prevent duplicates and space-prefixed commands (for privacy), along with erasing all duplicates before adding new ones
HISTCONTROL=ignoreboth:erasedups
# Append to the history file, don't overwrite it
shopt -s histappend
# Include timestamps in history
export HISTTIMEFORMAT="%F %T "
