#
# ~/.bash_profile
# Sourced upon login, before .bashrc (except on Mac OS X)

TZ='Europe/London'; export TZ

# Source .profile as just-in-case measure
[[ -f ~/.profile ]] && . ~/.profile

# Source .bashrc first
[[ -f ~/.bashrc ]] && . ~/.bashrc

# Then everything else gets configured here
export PS1="\[\033[0;34m\]\u:\w $ \[\033[0m\]"

export XDG_DATA_DIRS="/home/james/.linuxbrew/share:$XDG_DATA_DIRS"

# Append to history file, don't overwrite it
shopt -s histappend
HISTSIZE=1000000000000000000
HISTFILESIZE=1000000000000000000
