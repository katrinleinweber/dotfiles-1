#!/bin/bash
# bootstrap.sh
# Syncs local dotfiles repo with the one on Github, after backing them up to a "dotfiles.bak" directory

# Grab the date please
today="$(date "%Y-%m-%d")"

# Manually set dotfile-containing directory here!  Then shift yourself over there!
dotfiles="$HOME/.dotfiles"
cd "$dotfiles"

# Updates from Github, just in case
git pull origin master

if [ ! -d "$dotfiles"/dotfiles.bak ]; then
	mkdir "$dotfiles"/dotfiles.bak
	backup_dir="$dotfiles/dotfiles.bak"
elif [ -d dotfiles.bak ]; then
	mkdir "$dotfiles"/dotfiles_"$today".bak
	backup_dir="$dotfiles/dotfiles_$today.bak"
fi

# Regex for all dotfiles found here: http://stackoverflow.com/questions/4640879/regular-expressions-matching-filenames-starting-with-dot
cp -r ^\..+ "${backup_dir}"

# Softlink all dotfiles from newly-updated .dotfiles directory 
ln -s "$dotfiles"/^\..+ "$HOME/"

# Source .bash_profile
source .bash_profile
