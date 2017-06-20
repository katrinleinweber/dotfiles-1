#!/bin/bash
# These steps were taken from https://sites.google.com/site/easylinuxtipsproject/first

# Ubuntu sets swappiness (as found in /proc/sys/vm/swappiness) to 60 by default, which is apparently far too high for desktops, and will slow down your machine too much
function reduce_swappiness() {
    # Apparently requires gksu and leafpad packages to be installed, so
    sudo apt install gksu leafpad
    echo "# Decrease swap usage to a more reasonable level" | sudo tee -a /etc/sysctl.conf
    echo "vm.swappiness=10" | sudo tee -a /etc/sysctl.conf
    # If your machine has less than 1GB RAM, you should set it to 5 instead
}

function stop_gnome_taking_over_x() {
    {
        printf "To make sure your touchpad settings are acknowledged,";
        printf "rather than run over by GNOME's own preferences,";
        printf "install dconf-editor, then run it, and find:"
        printf "\t/org/gnome/settings-daemon/plugins/mouse/";
        printf "and then uncheck the \"Active\" setting.";
        printf "\n\nReboot your computer, and it should be listening";
        printf "to you again!";
    }
}

# Turn on firewall (which is disabled by default)
sudo ufw enable
# Check settings with: sudo ufw status verbose
