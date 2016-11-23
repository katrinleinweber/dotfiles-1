# James Prime
# .bash_aliases

# Enable color support of ls and also add handy aliases
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

# Longlist of files
alias ll='ls -alhF --color=always'

# List all files, including hidden ones
alias ls='ls -lh --color=always'

# Always create parent directories on command
alias mkdir='mkdir -pv'

# Adding prompts to most regular commands
#alias cp='cp -iv'      # interactive, verbose
alias rm='rm -iv'      # interactive, verbose
#alias mv='mv -iv'      # interactive, verbose
alias grep='grep -i'   # ignore case when grepping

# Ensures you always open the Vimproved Version :D
alias vi='vim'

# Find top 5 largest files
alias findbig="find . -type f -exec ls -s {} \; | sort -n -r | head -5"

# Auto-resumes wget downloads
alias wget='wget -c'

# Single update command
alias update='sudo apt update && sudo apt upgrade && sudo apt dist-upgrade'

# Single clean-up command
alias clean='sudo apt autoremove && sudo apt clean all && sudo apt autoclean all'
