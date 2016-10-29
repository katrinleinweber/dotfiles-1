#!/bin/bash

if [ "$#" -eq "1" ]; then
	os="$1"
else
	os="arch"
fi

function link_files() {
	if [[ "$#" -eq "1" ]]; then
		dir="$1"
	else
		dir="$HOME/.dotfiles/$os"
	fi
	for file in "$dir/\.[a-zA-Z]"*; do
		# Checks if given file is not a directory, isn't a link, and is a regular file
		if [[ ! -d "$file" && ! -L "$(basename "$file")" && -f "$file" ]]; then
		# If so, copies the file into .dotfiles/$os directory and append the filename with "_old", so we have the version that was already there backed up before doing anything else
			cp "$HOME/$(basename "$file")" "$dir/$(basename "$file")_old"
		fi
		# Forces symlink from .dotfiles/$os files into $HOME directory
		ln -sf "$file" "$HOME/$(basename "$file")"
	done
}

for file in "$HOME/.dotfiles/$os/\.[a-zA-Z]"*; do
	# If given file is not a directory, isn't a link, and is a regular file, copy the file into .dotfiles/$os directory and append the filename with "_old", so we have the version that was already there backed up before doing anything else
	if [[ ! -d "$file" && ! -L "$(basename "$file")" && -f "$file" ]]; then
		cp "$HOME/$(basename "$file")" "$HOME/.dotfiles/$os/$(basename "$file")_old"
	fi
	# If given file is a directory, make the corresponding directory path in the home directory
	if [[ -d "file" ]]; then
		mkdir -p "$HOME/${file##*os/}"
		link_files "$file"
	fi
	# Forces symlink from .dotfiles/$os files into $HOME directory
	ln -sf "$file" "$HOME/$(basename "$file")"
done
