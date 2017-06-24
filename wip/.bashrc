# .bashrc
# Reloaded every time a new instance of bash is started without requiring a login
# i.e. put everything that ONLY RELATES TO BASH in here
#      (functions, aliases, bash-only non-environment variables like HISTSIZE, shell options, etc)
# Sourced by .bash_profile

# Sources prompt file
if [ -f .bash_prompt ]; then
        source .bash_prompt
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

##################################################################################
# HISTORY-SPECIFIC SETTINGS
##################################################################################
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
# Update the values of LINES and COLUMNS.
shopt -s checkwinsize
##################################################################################
# END HISTORY-SPECIFIC SETTINGS
##################################################################################
