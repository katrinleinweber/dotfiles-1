#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Setting environment variables
export VISUAL="vim"
export TERMINAL="urxvt"
export PATH="/home/james/.linuxbrew/bin:/bin/:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl"

#export PS1="\[\033[38;5;12m\][\[$(tput sgr0)\]\[\033[38;5;10m\]\u\[$(tput sgr0)\]\[\033[38;5;12m\]@\[$(tput sgr0)\]\[\033[38;5;7m\]\h\[$(tput sgr0)\]\[\033[38;5;12m\]]\[$(tput sgr0)\]\[\033[38;5;15m\]: \[$(tput sgr0)\]\[\033[38;5;7m\]\w\[$(tput sgr0)\]\[\033[38;5;12m\]>\[$(tput sgr0)\]\[\033[38;5;10m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

# Command prompt customisation (found both in .bashrc and .bash_profile, just in case)
export PS1="\[\033[0;34m\]\u:\w $ \[\033[0m\]"

# Source .bash_aliases if it exists
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

# If not, here are ALL THE ALIASES
if [ -x /usr/bin/dircolors ]; then
	test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
	alias ls='ls --color=auto'
	alias dir='dir --color=auto'
	alias vdir='vdir --color=auto'
	alias grep='grep --color=auto'
	alias fgrep='fgrep --color=auto'
	alias egrep='egrep --color=auto'
fi

# Longlist of files
alias ll='ls -alhF --color=always'

# Always Vim
alias vi='vim'

# Find top 5 largest files
alias findbig="find . -type f -exec ls -s {} \; | sort -n -r | head -5"

# Auto-resumes wget downloads
alias wget='wget -c'

# Update on one command
alias update='sudo pacman -Syu'

# Power options
#alias reboot='sudo /sbin/reboot'
#alias poweroff='sudo /sbin/poweroff'
#alias halt='sudo /sbin/halt'
#alias shutdown='sudo /sbin/shutdown -P now'
alias shutdown='shutdown -P now'
