#!/bin/bash
# MacOSX_Specifics.sh
# Defines functions for doing things specific to installations on a new Mac of some sort

# Install and set up Homebrew configuration
function homebrew() {
	# Install Homebrew
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" || exit
	# Check if .brew file is there, make it executable, and execute it
    if [[ -f "$HOME/.brew" ]]; then
        chmod +x "$HOME/.brew"
        "$HOME/.brew"
    fi
}

# Install Vundle plugin for Vim
function vundle() {
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	vim +PluginInstall +qall
}

# Set Finder to show hidden files
function show_hidden_files() {
    # See http://www.macworld.co.uk/how-to/mac-software/how-show-hidden-files-in-mac-os-x-finder-funter-3520878/
    defaults write com.apple.finder AppleShowAllFiles YES
    # Relaunch Finder
    killall Finder
}

# Toggle single application mode (only show one app at once)
# See http://lifehacker.com/the-best-hidden-settings-you-can-unlock-with-os-xs-ter-1476627111
function single_app_mode() {
    if [[ $(defaults read com.apple.dock single-app) == "0" ]]; then
        defaults write com.apple.dock single-app -bool true # Sets it to 1
        killall Dock
    elif [[ $(defaults read com.apple.dock single-app) == "1" ]]; then
        defaults write com.apple.dock single-app -bool false # Sets it to 0
        killall Dock
    else
        # Sets it to true (1) if unset already; toggles it on, in other words
        defaults write com.apple.dock single-app -bool true
        killall Dock
    fi
}

# Stop startup noisemaking
function shut_up_on_startup() {
    sudo nvram SystemAudioVolume=%80
}

# Set battery to show percentage remaining (need to click on the battery icon in menu bar, rather than using System Preferences)

# function macls() {
# 	if [[ "$@" == "" || "$#" -eq "0" ]]; then
# 		command ls -G
# 	else
# 		if [[ "$#" -gt "1" ]]; then
# 			#args="${@:1:$#-1}"
# 			command ls -G "$@"
# 		else
# 			command ls "$1" -G
# 		fi
# 	fi
# }

# function macdir() {
#         if [[ "$@" == "" ]]; then
#                 command dir --color=auto
#         else
# 		if [[ "$#" -gt "1" ]]; then
# 			command dir "${@:1:-1}" --color=auto "${@: -1}"
# 		else
# 			command dir "$1" --color=auto
# 		fi
# 	fi
# }

# function macvdir() {
#         if [[ "$@" == "" ]]; then
#                 command vdir --color=auto
#         else
# 		if [[ "$#" -gt "1" ]]; then
# 			command vdir "${@:1:-1}" --color=auto "${@: -1}"
# 		else
# 			command vdir "$1" --color=auto
# 		fi
#         fi
# }

# function macgrep() {
#         if [[ "$@" == "" ]]; then
#                 command grep --color=auto
#         else
# 		if [[ "$#" -gt "1" ]]; then
# 			command grep "${@:1:-1}" --color=auto "${@: -1}"
# 		else
# 			command grep "$1" --color=auto
# 		fi
#         fi
# }

# function macegrep() {
#         if [[ "$@" == "" ]]; then
#                 command egrep --color=auto
#         else
# 		if [[ "$#" -gt "1" ]]; then
# 			command egrep "${@:1:-1}" --color=auto "${@: -1}"
# 		else
# 			command egrep "$1" --color=auto
# 		fi
#         fi
# }

# function macfgrep() {
#         if [[ "$@" == "" ]]; then
#                 command fgrep --color=auto
#         else
# 		if [[ "$#" -gt "1" ]]; then
# 			command fgrep "${@:1:-1}" --color=auto "${@: -1}"
# 		else
# 			command fgrep "$1" --color=auto
# 		fi
#         fi
# }
