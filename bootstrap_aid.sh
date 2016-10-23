#!/bin/bash

function link_files() {
	if [[ "$#" -eq "1" ]]; then
		dir="$1"
	else
		dir="$HOME/.dotfiles/arch"
	fi
	for file in "$dir/\.[a-zA-Z]"*; do
		# Checks if given file is not a directory, isn't a link, and is a regular file
		if [[ ! -d "$file" && ! -L "$(basename $file)" && -f "$file" ]]; then
		# If so, copies the file into .dotfiles/arch directory, so we have most updated version where we want to link from
			cp "$HOME/$(basename $file)" "$dir/"
		fi
		# Forces symlink from .dotfiles/arch files into $HOME directory
		ln -sf "$file" "$HOME/$(basename $file)"
	done
}

# Checks if given file is not a directory, isn't a link, and is a regular file
for file in "$HOME/.dotfiles/arch/\.[a-zA-Z]"*; do
	if [[ ! -d "$file" && ! -L "$(basename $file)" && -f "$file" ]]; then
		# If so, copies the file into .dotfiles/arch directory, so we have most updated version where we want to link from
		cp "$HOME/$(basename $file)" "$HOME/.dotfiles/arch/"
	fi
	if [[ -d "file" ]]; then
		mkdir "$HOME/$file"
		link_files "$file"
	fi
	# Forces symlink from .dotfiles/arch files into $HOME directory
	ln -sf "$file" "$HOME/$(basename $file)"
done
