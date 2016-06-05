# .bash_profile
# User- and bash-specific config file for login shells
# Read before .profile

export PS1="\[\033[0;34m\]\u:\w $ \[\033[0m\]"
# export PATH="$PATH:~/bin:/Library/TeX/texbin"
export PATH="/Users/jcprime/anaconda/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/TeX/texbin:~/bin"

# added by Anaconda2 4.0.0 installer
#export PATH="/Users/jcprime/anaconda/bin:$PATH"
# (No longer required since it's been added to PATH as above)

# Commented out below or else it undoes my prompt
#if [ -f ~/.bashrc ]; then 
#    source ~/.bashrc 
#fi

##################################################################################
# ALIASES
##################################################################################
# Git aliases
alias ga='git add '
alias gb='git branch '
alias gc='git commit '
alias gd='git diff '
alias go='git checkout '
alias gs='git status '
alias gt='git tag '
alias gk='gitk --all&'
alias gx='gitx -all'

#----------------------------------------------------------------------------------
# From Xenon .bash_profile:
#----------------------------------------------------------------------------------
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
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# Longlist of files
alias ll='ls -alhF --color=always'

# List all files, including hidden ones
#alias ls='ls -lh'

# Always create parent directories on command
alias mkdir='mkdir -pv'

# Adding prompts to most regular commands
#alias cp='cp -iv'      # interactive, verbose
#alias rm='rm -iv'      # interactive, verbose
#alias mv='mv -iv'      # interactive, verbose
#alias grep='grep -i'   # ignore case when grepping

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
# Useful ones for own (Linux) machines...
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
