#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Start ssh-agent, and sort out adding of Github identity file
if ! pgrep -u $USER ssh-agent > /dev/null; then
	ssh-agent > ~/.ssh-agent-thing
fi
if [[ "$SSH_AGENT_PID" == "" ]]; then
	eval $(<~/.ssh-agent-thing)
fi

ssh-add ~/.ssh/chroot_github > /dev/null

# Setting environment variables
export VISUAL="vim"
export TERMINAL="urxvt"
PATH="/home/james/.linuxbrew/bin:/home/james/bin:/home/james/usr/local/bin:/home/james/usr/bin:/usr/local/bin:/usr/bin:/usr/sbin:/bin:/usr/local/games:/usr/games:/snap/bin"

#export PS1="\[\033[38;5;12m\][\[$(tput sgr0)\]\[\033[38;5;10m\]\u\[$(tput sgr0)\]\[\033[38;5;12m\]@\[$(tput sgr0)\]\[\033[38;5;7m\]\h\[$(tput sgr0)\]\[\033[38;5;12m\]]\[$(tput sgr0)\]\[\033[38;5;15m\]: \[$(tput sgr0)\]\[\033[38;5;7m\]\w\[$(tput sgr0)\]\[\033[38;5;12m\]>\[$(tput sgr0)\]\[\033[38;5;10m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

# Command prompt customisation (found both in .bashrc and .bash_profile, just in case)
export PS1="\[\033[0;34m\]\u:\w $ \[\033[0m\]"

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
