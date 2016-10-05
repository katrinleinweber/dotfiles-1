# .bash_profile
# User- and bash-specific config file for login shells
# Read before .profile

if [ -f ~/.aliases ]; then
	source ~/.aliases
fi

if [ -f ~/.exports ]; then
        source ~/.exports
fi

if [ -f ~/.functions ]; then
	source ~/.functions
fi

if [ -f ~/.path ]; then
        source ~/.path
fi

# Source .bashrc
if [ -f ~/.bashrc ]; then 
	source ~/.bashrc 
fi
