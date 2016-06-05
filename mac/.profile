# .profile
# Non-interactive, non-shell-specific, login-requiring config file
# i.e. stick your environment variables and the like in here, because
# anything run/spawned from the main one will inherit them automatically

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

#------------------------------------------------------------------------
# From Xenon .profile:
#------------------------------------------------------------------------
# If running bash
#if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
#    if [ -f "$HOME/.bashrc" ]; then
#        . "$HOME/.bashrc"
#    fi
#fi

# Set PATH so it includes user's private bin if it exists
#if [ -d "$HOME/bin" ] ; then
#    PATH="$HOME/bin:$PATH"
#fi
