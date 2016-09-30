# James Prime
# .bashrc

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=100000000000
HISTFILESIZE=100000000000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Source alias definitions file
if [ -f ~/.bash_aliases ]; then
        source ~/.bash_aliases
fi

# Source functions file for the only file that I know does what I want it to do!
if [ -d ~/.bash_functions ]; then
        source ~/.bash_functions/codes
fi

# Source environment variables file
if [ -f ~/.exports ]; then
        source ~/.exports
fi

# Source bash prompt file
if [ -f ~/.prompt ]; then
        source ~/.prompt
fi

# Source path file
if [ -f ~/.path ]; then
        source ~/.path
fi
