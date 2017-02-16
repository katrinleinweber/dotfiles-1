# .bash_profile
# User- and bash-specific config file for login shells
# Read before .profile

# Source .bashrc
if [ -f ~/.bashrc ]; then 
	source ~/.bashrc 
fi

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

##
# Your previous /Users/jcprime/.bash_profile file was backed up as /Users/jcprime/.bash_profile.macports-saved_2017-02-10_at_17:37:25
##

# MacPorts Installer addition on 2017-02-10_at_17:37:25: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

