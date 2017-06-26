# James Prime
# .bashrc
# Sourced by .bash_profile

# Start ssh-agent, because apparently Xenon doesn't do it automatically
#if ! pgrep -u $USER ssh-agent > /dev/null; then
#    ssh-agent > ~/.ssh-agent-thing
#fi
#if [[ "$SSH_AGENT_PID" == "" ]]; then
#    eval $(<~/.ssh-agent-thing)
#fi
#eval "$(ssh-agent -s)"
# And add ~/.ssh/github to ssh-agent once started, then test it
#ssh-add ~/.ssh/github
#ssh -T git@github.com

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
#if [ -f ~/.prompt ]; then
        #source ~/.prompt
#fi

# Source path file
#if [ -f ~/.path ]; then
        #source ~/.path
#fi
