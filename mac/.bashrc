# .bashrc
# Reloaded every time a new instance of bash is started without requiring a login
# i.e. put everything that ONLY RELATES TO BASH in here
#      (functions, aliases, bash-only non-environment variables like HISTSIZE, shell options, etc)
# Sourced by .bash_profile

# FROM BASH-IT AUTOGENERATED .BASHRC FILE:
# Init z! (https://github.com/rupa/z)
#. ~/z.sh

# Don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# Append to the history file, don't overwrite it
shopt -s histappend

# For setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=100000000000
HISTFILESIZE=100000000000
HISTTIMEFORMAT='%F %T '
PROMPT_COMMAND='history -a'

# Check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Sources prompt file
if [ -f ~/.bash_prompt ]; then
        source ~/.bash_prompt
fi
if [ -f ~/.prompt ]; then
        source ~/.prompt
fi

# Source alias definitions file(s)
if [ -f ~/.bash_aliases ]; then
	source ~/.bash_aliases
fi
if [ -f ~/.aliases ]; then
	source ~/.aliases
fi

# Source only the functions file I know to do what I want!  (From Xenon)
if [ -d ~/.bash_functions ]; then
	source ~/.bash_functions/codes
fi
if [ -f ~/.functions ]; then
	source ~/.functions
fi

# Source environment variables file
if [ -f ~/.exports ]; then
        source ~/.exports
fi

# Source path file
#if [ -f ~/.path ]; then
#        source ~/.path
#fi

###################################################################################################
# MAC-SPECIFIC
###################################################################################################

# Source bash completions (installed by Homebrew!)
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# Add ssh keys to Keychain and ssh-agent (needed on Sierra only)
ssh-add -K ~/.ssh/socrates &> /dev/null
ssh-add -K ~/.ssh/xenon &> /dev/null
ssh-add -A &> /dev/null
