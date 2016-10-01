#
# ~/.bash_profile
# Sourced upon login, before .bashrc (except on Mac OS X)

TZ='Europe/London'; export TZ

# Source .profile as just-in-case measure
[[ -f ~/.profile ]] && . ~/.profile

# Source .bashrc first
[[ -f ~/.bashrc ]] && . ~/.bashrc

# Then everything else gets configured here
export PS1="\[\033[0;34m\]\u:\w $ \[\033[0m\]"
