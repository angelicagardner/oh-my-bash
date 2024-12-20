# Make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Automatically update LINES and COLUMNS after each command if the window size changes
shopt -s checkwinsize
# Automatically change to a directory if the command is a directory name
shopt -s autocd
# Correct minor spelling errors in directory names when using 'cd'
shopt -s cdspell
