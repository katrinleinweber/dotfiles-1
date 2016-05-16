# James Prime
# .bash_profile

PATH=$PATH:$HOME/binX:$HOME/DeHydrate/Code
#PATH=$PATH:$HOME/bin

export PS1="\[\e[32m\]\u\[\e[m\]\[\e[32m\]@\[\e[m\]\[\e[32m\]\h\[\e[m\]\[\e[32m\]:\[\e[m\]\[\e[32m\]\w\[\e[m\]\[\e[32m\] \[\e[m\]\[\e[32m\]\\$\[\e[m\] "

#qgulp='~/binX/qgulp'
#dehydrate='~/DeHydrate/Code/dehydrate'
#cp2k='~/binX/cp2k'

# Append to the history file, don't overwrite it
shopt -s histappend

# For setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=100000000000
HISTFILESIZE=100000000000
HISTTIMEFORMAT='%F %T '
PROMPT_COMMAND='history -a'

##################################################################################
# FUNCTIONS:
##################################################################################
if [ -d ~/.bash_functions ]; then
    . ~/.bash_functions/codes
fi

##################################################################################
# ALIASES:
##################################################################################
# Sets colours to distinguish directories from files, etc
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Enables GCC warning colours
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# Longlist of files
alias ll='ls -alhF --color=always' 

# List all files, including hidden ones
alias ls='ls -lh'

# Always create parent directories on command
alias mkdir='mkdir -pv'

# Adding prompts to most regular commands
alias cp='cp -iv'      # interactive, verbose
alias rm='rm -iv'      # interactive, verbose
alias mv='mv -iv'      # interactive, verbose
alias grep='grep -i'   # ignore case when grepping

# Ensures you always open the Vimproved Version :D
alias vi='vim'

# Find top 5 largest files
alias findbig="find . -type f -exec ls -s {} \; | sort -n -r | head -5"

# Install colordiff package
#alias diff='colordiff'

# Auto-resumes wget downloads
alias wget='wget -c'

#alias la='ls -A'
#alias l='ls -CF'

#--------------------------------------------------------------------------------
# Useful ones for own machine...
# (from http://www.cyberciti.biz/tips/bash-aliases-mac-centos-linux-unix.html)
#--------------------------------------------------------------------------------
# Update on one command 
#alias update='sudo apt-get update && sudo apt-get upgrade'
#--------------------------------------------------------------------------------
#alias reboot='sudo /sbin/reboot'
#alias poweroff='sudo /sbin/poweroff'
#alias halt='sudo /sbin/halt'
#alias shutdown='sudo /sbin/shutdown'
#--------------------------------------------------------------------------------

#################################################################################
# SHELL FUNCTIONS:
#################################################################################
# See ~/.bash_functions/* please!
#################################################################################
