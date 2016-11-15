# .bash_profile
# User- and bash-specific config file for login shells
# Read before .profile

# Source .bashrc
if [ -f ~/.bashrc ]; then 
	source ~/.bashrc 
fi

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
