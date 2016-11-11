#!/bin/bash

function reinstall_packages()
{
    dpkg --set-selections < "$HOME"/installed.log
}

function dotfiles()
{
    for dotfile in "$HOME/\.[a-z]*"; do
	# If dotfile is regular file and not symlink:
	# 1. Copy dotfile to respective .dotfiles directory
	# 2. Force symlink of dotfile in new location to old location
        if [ -f "$dotfile" && ! -L "$dotfile" ]; then
	    cp "$dotfile" "$HOME/.dotfiles/arch/${dotfile#$HOME/}"
            ln -sf "$HOME/.dotfiles/arch/${dotfile#$HOME}" "$dotfile"
	# If dotfile is directory in HOME but does not exist in .dotfiles directory:
	# 1. Make new directory in .dotfiles directory for dotfile
	# 2. Recursively copy everything in dotfile into new .dotfiles/dotfile directory
	# 3. Force symlink of everything in new dotfile back into old dotfile, recursively
        elif [ -d "$dotfile" && ! -d "$HOME/.dotfiles/arch/${dotfile#$HOME/}" ]; then
	    mkdir "$HOME/.dotfiles/arch/${dotfile#$HOME/}"
            cp -r "$dotfile" "$HOME/etc/dotfiles/xenon/"
	# TODO: If dotfile is directory in .dotfiles directory but does not exist in HOME (not currently applicable because we're searching HOME specifically):
	# 1. Make new directory in HOME to reflect .dotfiles/dotfile path
	# 2. Symlink all non-directory files in .dotfiles/dotfile into HOME/dotfile
	# 3. When subdirectory is reached, make that directory in new location too, and start again with the symlinking, and so on, ad infinitum
	#elif [ -d "$HOME/.dotfiles/arch/${dotfile/$HOME/}" && ! -d "$dotfile" ]; then
	#    pass
	# If dotfile is already a symlink:
	# 1. Print details of existing link in case it needs changing, which will have to be done manually for now!
	elif [ -L "$dotfile" ]; then
	    echo "$dotfile" is already symlinked to "$(readlink -f $dotfile)"
        fi
    done
}

function qgulp()
{
    file_list="$1"
    for file in "$file_list"; do
        ~/bin/qgulp "$file"
    done
}

function dehydrate()
{
    file_list="$1"
    for file in "$file_list"; do
        ~/DeHydrate/Code/dehydrate "$file"
    done
}

function cp2k()
{
    file_list="$1"
    if [[ "$#" -ge "2" ]]; then
        slots="$2"
    elif [[ "$#" -eq "1" ]]; then
        slots="1"
    elif [[ "$#" -eq "0" ]]; then
        echo "Usage: cp2k file_list (number_of_slots)"
        echo "Where (stuff in brackets) is optional"
    fi
    for file in "$file_list"; do
        ~/bin/cp2k "$file" 2.6.0 "$slots" "${file%.*}"
    done
}

function extract {
 if [ -z "$1" ]; then
    # display usage if no parameters given
    echo "Usage: extract <path/file_name>.<zip|rar|bz2|gz|tar|tbz2|tgz|Z|7z|xz|ex|tar.bz2|tar.gz|tar.xz>"
 else
    if [ -f $1 ] ; then
        # NAME=${1%.*}
        # mkdir $NAME && cd $NAME
        case $1 in
          *.tar.bz2)   tar xvjf ../$1    ;;
          *.tar.gz)    tar xvzf ../$1    ;;
          *.tar.xz)    tar xvJf ../$1    ;;
          *.lzma)      unlzma ../$1      ;;
          *.bz2)       bunzip2 ../$1     ;;
          *.rar)       unrar x -ad ../$1 ;;
          *.gz)        gunzip ../$1      ;;
          *.tar)       tar xvf ../$1     ;;
          *.tbz2)      tar xvjf ../$1    ;;
          *.tgz)       tar xvzf ../$1    ;;
          *.zip)       unzip ../$1       ;;
          *.Z)         uncompress ../$1  ;;
          *.7z)        7z x ../$1        ;;
          *.xz)        unxz ../$1        ;;
          *.exe)       cabextract ../$1  ;;
          *)           echo "extract: '$1' - unknown archive method" ;;
        esac
    else
        echo "$1 - file does not exist"
    fi
fi
}
