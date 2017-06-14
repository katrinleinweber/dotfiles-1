#!/bin/bash

# Gives details of PROGRAMS (executables) listed in your PATH
compgen -c

# If you don't have compgen...
function compgen_equivalent() {
    IFS=: read -ra dirs_in_path <<< "$PATH"
    for dir in "${dirs_in_path[@]}"; do
        for file in "$dir"/*; do
            [[ -x "$file" && -f "$file" ]] && printf '%s\n' "${file##*/}"
        done
    done
}

case distro in
    apt )
        # Gives details of everything installed via Aptitude-based distributions
        dpkg -l
        ;;
    rpm )
        rpm -qa
        ;;
    pkg )
        pkg_info
        ;;
    portage )
        if [[ equery list != "" ]]; then
            equery list
        elif [[ eix -I != "" ]]; then
            eix -I
        fi
        ;;
    pacman )
        pacman -Q
        ;;
    cygwin )
        cygcheck --check-setup --dump-only *
        ;;
    slackware )
        slapt-get --installed
        ;;
esac

# Outputs details of all packages installed via Aptitude-based distributions to the given file
dpkg --get-selections > ~/allinstalls.log

# Reinstalls from the above file
dpkg --set-selections < ~/allinstalls.log

http://stackoverflow.com/questions/6565357/git-push-requires-username-and-password has details on passwordless Github connections
