#!/bin/bash
# SSH_Specifics.sh

function ssh_config() {
    if [[ "$#" -eq "1" ]]; then
        ssh_config_file="$1"
    elif [[ "$#" -eq "0" ]]; then
        ssh_config_file="$HOME/.ssh/config"
    fi
    # If file (or directory!) does not exist, create it
    if [[ ! -f "$ssh_config_file" ]]; then
        mkdir -p "${ssh_config_file%/*}"
        touch "$ssh_config_file"
    fi
    {   printf "Host socrates\n";
        printf "\tHostName\t\tsocrates.ucl.ac.uk\n";
        printf "\tUser\t\t\tzccah73\n";
        printf "\tIdentityFile\t\t%s/.ssh/socrates\n" "$HOME";
        printf "\tAddKeysToAgent\t\tyes\n\n";
        printf "Host xenon\n";
        printf "\tHostName\t\txenon.chem.ucl.ac.uk\n";
        printf "\tUser\t\t\tjames\n";
        printf "\tIdentityFile\t\t%s/.ssh/xenon\n" "$HOME";
        printf "\tAddKeysToAgent\t\tyes\n";
        printf "\tServerAliveInterval\t120\n";
        printf "\tProxyCommand\t\tssh zccah73@socrates.ucl.ac.uk -W %%h\:%%p\n";
    } > "$ssh_config_file"
}

function ucl_ssh() {
    socrates="$HOME/.ssh/socrates"
    socrates_pub="$socrates.pub"
    xenon="$HOME/.ssh/xenon"
    xenon_pub="$xenon.pub"
    ssh_config "$HOME/.ssh/config"
    if [[ ! -f "$socrates" ]]; then
        ssh-keygen -t rsa -b 4096 -f "$socrates" -q -N ""
    fi
    # Example: cat .ssh/file.pub | ssh host 'cat >> ~/.ssh/authorized_keys'
    cat "$socrates_pub" | ssh zccah73@socrates.ucl.ac.uk 'cat >> ~/.ssh/authorized_keys'
    if [[ ! -f "$xenon" ]]; then
        ssh-keygen -t rsa -b 4096 -f "$xenon" -q -N ""
    fi
    cat "$xenon_pub" | ssh xenon 'cat >> ~/.ssh/authorized_keys'
    # Explicitly add identities to ssh-agent, just in case and all!  (Needed on iTerm2 on macOS)
    ssh-add "$socrates"
    ssh-add "$xenon"
}
