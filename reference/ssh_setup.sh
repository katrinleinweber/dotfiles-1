# Set up config file
if [[ "$#" -eq "1" ]]; then
    ssh_config_file="$1"
elif [[ "$#" -eq "0" ]]; then
    ssh_config_file="$HOME/.ssh/config"
fi
{
    printf "Host socrates\n";
    printf "\tHostName\t\tsocrates.ucl.ac.uk\n";
    printf "\tUser\t\t\tzccah73\n";
    printf "\tIdentityFile\t\t%s/.ssh/socrates\n" "$HOME";
    printf "\tAddKeysToAgent\t\tyes\n";
    printf "\n\n";
    printf "Host xenon\n";
    printf "\tHostName\t\txenon.chem.ucl.ac.uk\n";
    printf "\tUser\t\t\tjames\n";
    printf "\tIdentityFile\t\t%s/.ssh/xenon\n" "$HOME";
    printf "\tAddKeysToAgent\t\tyes\n";
    printf "\tServerAliveInterval\t120\n";
    printf "\tProxyCommand\t\tssh zccah73@socrates.ucl.ac.uk -W %%h:%%p\n";
} > "$ssh_config_file"

# Set up UCL SSH connections
socrates="$HOME/.ssh/socrates"
socrates_pub="$socrates.pub"
xenon="$HOME/.ssh/xenon"
xenon_pub="$xenon.pub"
# Set up and cat across socrates file
if [[ ! -f "$socrates" ]]; then
    ssh-keygen -t rsa -b 4096 -f "$socrates" -q -N ""
fi
# Example: cat .ssh/file.pub | ssh host 'cat >> ~/.ssh/authorized_keys'
cat "$socrates_pub" | ssh zccah73@socrates.ucl.ac.uk 'cat >> ~/.ssh/authorized_keys'
# Set up and cat across Xenon file
if [[ ! -f "$xenon" ]]; then
    ssh-keygen -t rsa -b 4096 -f "$xenon" -q -N ""
fi
cat "$xenon_pub" | ssh xenon 'cat >> ~/.ssh/authorized_keys'
# Remnant from ~/bin/config/SSH_Specifics.sh: ssh_config "$HOME/.ssh/config"
