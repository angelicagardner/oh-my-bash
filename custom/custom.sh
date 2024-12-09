# Make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Pip
export PATH="$HOME/.local/bin:$PATH"

# Go binary path
export PATH=$PATH:/usr/local/go/bin

#Set GOPATH, the workspace for Go projects
export GOPATH=$HOME/go

# Add GOPATH/bin path
export PATH=$PATH:$GOPATH/bin
