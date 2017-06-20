#!/bin/bash
# arch_config.sh
# Sets up config files that I would otherwise have to manually edit over and over again after installing Arch
# Also see bin/config/bootstrap_wip.sh

# Set OS to Arch just in case (e.g. for dotfile-linking purposes and suchlike)
os="arch"

export VISUAL="vim" # Add to .bashrc

# If you know the make of your touchpad, stick it in here; otherwise, assign everything false
synaptics=false
alps=false
elantech=false

# Specify whether to use xinput or synclient to set touchpad settings
xinput=false
synclient=true

# Define relevant files and paths here, or forever hold your peace
i3_config_file="$HOME/.config/i3/config"
i3status_file="$HOME/.i3status"
gitconfig_file="$HOME/.gitconfig"
dotfiles_dir="$HOME/.dotfiles"
keyboard_config_file="/etc/X11/xorg.conf.d/00-keyboard.conf"
grub_config_file="/boot/grub/menu.lst"
package_file="$HOME/.dotfiles/arch/packages"
yaourt_file="$HOME/.dotfiles/arch/yaourts"
ssh_config_file="$HOME/.ssh/config"
xinitrc_file="$HOME/.xinitrc"

# Define SYSTEM files to edit (i.e. those needing sudo privileges!)
mirrorlist_file="/etc/pacman.d/mirrorlist"
package_database_file="/etc/pacman.conf"
lightdm_config_file="/etc/lightdm/lightdm.conf"

# Start running sudo-y-ness for modifying system files
placeholder_command="pass"
su -c "${placeholder_command}"

# Check network connection, otherwise next steps won't work!
function check_internet() {
    # TODO
    nmtui-connect
}

# Update everything that's already there as first step
sudo pacman -Syu

# Keyboard settings
function keyboard_setup() {
    #setxkbmap -layout gb # Supposedly sets UK keyboard permanently, but didn't in my tests (was only temporary; maybe it needs to go in ~/.xinitrc??)
    sudo localectl --no-convert set-x11-keymap gb # Sets UK QWERTY keymap on Xorg
    # If ^^ fails...
    if [[ "$(localectl --no-convert set-x11-keymap gb)" != "" ]]; then
        # Make keyboard config file
        sudo touch "${keyboard_config_file}"
        # And write out the config file manually
        sudo
        {
            printf "Section \"InputClass\"";
            printf "\tIdentifier \"system-keyboard\"";
            printf "\tMatchIsKeyboard \"on\"";
            printf "\tOption \"XkbLayout\" \"gb\"";
            printf "EndSection";
        } > "${keyboard_config_file}"
    fi
}

# Touchpad configuration (Chromebook- and then synaptics-specific)
function touchpad_setup() {
    # Requires xf86-input-synaptics to be installed so do that first!
    sudo pacman -Sy --noconfirm xf86-input-synaptics

    # Find out what kind of touchpad you've got
    touchpad_type=$(egrep -i 'synap|alps|etps' /proc/bus/input/devices)
    if [[ "${touchpad_type}" == "Synaptics" ]]; then
        synaptics=true
        alps=false
        elantech=false
    elif [[ "${touchpad_type}" == "ALPS" ]]; then
        alps=true
        synaptics=false
        elantech=false
    elif [[ "${touchpad_type}" == "Elantech" ]]; then
        elantech=true
        synaptics=false
        alps=false
    fi

    # Use the right tool for the job
    if [[ "$synaptics" == false  && "$alps" == false && "$elantech" == false ]]; then
        synclient=false
        xinput=true
    fi

    if [ ! -f "/etc/X11/xorg.conf.d/50-cros-touchpad.conf" ]; then
        sudo cp "/usr/share/X11/xorg.conf.d/50-cros-touchpad.conf" || sudo touch "/etc/X11/xorg.conf.d/50-cros-touchpad.conf"
    elif [ -f "/etc/X11/xorg.conf.d/50-cros-touchpad.conf" ]; then
        > "/etc/X11/xorg.conf.d/50-cros-touchpad.conf"
    fi
    #### CHECK THE BELOW FOR FUNCTIONING...NESS
    {
        printf "%b\n" "Section \"InputClass\"";
        printf "Identifier\t\"touchpad peppy cyapa\"";
        printf "\tMatchIsTouchpad\t\"on\"";
        printf "\tMatchDevicePath\t\"/dev/input/event*\"";
        printf "\tMatchProduct\t\t\"cyapa\"";
        printf "\tOption\t\t\t\"FingerLow\" \"10\"";
        printf "\tOption\t\t\t\"FingerHigh\" \"10\"";
        printf "EndSection";
    } >> /etc/X11/xorg.conf.d/50-cros-touchpad.conf

    # SYNAPTICS-SPECIFIC STUFFS
    # See https://wiki.archlinux.org/index.php/Touchpad_Synaptics

    # Xinput-specific settings
    if [[ "${xinput}" == true ]]; then
        # First find out which ID number your touchpad has
        xinput --list --short
        printf "What's the touchpad ID number please? "; read -r touchpad_id
        # Then set ID number in below command to set pointer speed if necessary:
        xinput --set-prop "$touchpad_id" "Device Accel Constant Deceleration" 1.5
    elif [[ "${synclient}" == true ]]; then
        # Find out what your current settings are if you need to using:
        synclient -l | tee touchpad.orig
        # Test setting changes using, e.g.
        synclient TapButton2=3
    fi
    # Now for the Actual Configuration File business
    if [[ ! -f "/etc/X11/xorg.conf.d/70-synaptics.conf" ]]; then
        sudo cp "/usr/share/X11/xorg.conf.d/70-synaptics.conf" || sudo touch "/etc/X11/xorg.conf.d/70-synaptics.conf"
    fi
}

# Time settings
function time_setup() {
    sudo ln -sf /usr/share/zoneinfo/GB /etc/localtime
}

function video_setup() {
    # Find out what kind of video card you have
    lspci | grep -e VGA -e 3D
}

# Screensaver and power-management settings
function display_setup() {
    if [[ "${xinitrc_file}" == "xset" ]]; then
        # TODO
        pass
    else
        # Write in xset lines BEFORE any lines containing "exec"
        # See https://wiki.archlinux.org/index.php/Display_Power_Management_Signaling#Setting_up_DPMS_in_X
        while read -r line; do
            if [[ "$line" == "exec" ]]; then
                # TODO
                pass
            fi
        done < "${xinitrc_file}"
        printf "xset s 3600 3600\nxset dpms 3600 3600 3600" >> "${xinitrc_file}"
        # TODO
        pass
    fi
}

# Install yaourt and AUR
function install_yaourt() {
    # Requires the following to be installed via Pacman
    sudo pacman -S --noconfirm base-devel git wget yajl
    # Now grab yaourt please
    sudo
    {
        printf "[archlinuxfr]";
        printf "SigLevel = Never";
        printf "Server = http://repo.archlinux.fr/\$arch";
    } >> "${package_database_file}"

    # And update it all to get stuff working
    sudo pacman -Sy yaourt

    # Another option coming up (the more manual way), in case the above doesn't work
    #if [[ -d ~/builds ]]; then
    #    cd ~/builds || exit
    #elif [[ ! -d ~/builds ]]; then
    #    mkdir ~/builds
    #    cd ~/builds || exit
    #fi

    #pacman -S base-devel wget
    #wget https://aur.archlinux.org/cgit/aur.git/snapshot/package-query.tar.gz
    #wget https://aur.archlinux.org/cgit/aur.git/snapshot/yaourt.tar.gz

    #tar xvf package-query.tar.gz
    #cd ~/builds/package-query || exit
    #makepkg -sri

    #tar xvf yaourt.tar.gz
    #cd ~/builds/yaourt || exit
    #makepkg -sri
}

# Packages to install
function install_everything() {
    # Install everything in list via Pacman
    if [[ -f "${package_file}" ]]; then
        while read -r line; do
            # Ignore "commented" lines beginning with hash in package_file
            [[ $line = \#* ]] && continue
            #printf '%s\n' "$line" # Check
            packages+=("$line")
        done < "${package_file}"
    else
        declare -a packages=("zathura" "zathura-pdf-poppler" "vim" "gparted" "filezilla" "gpicview" "texworks" "lynx" "ranger" "vlc" "ttf-dejavu" "ttf-inconsolata" "lxappearance" "vim-systemd" "tlp" "alsa-firmware" "alsa-utils" "alsa-plugins" "pulseaudio-alsa" "pulseaudio" "pavucontrol" "thunar" "tree" "npm" "gnome-themes-standard" "gtk-engine-murrine" "font-mathematica" "texlive-core" "texlive-fontsextra" "shellcheck")
    fi
    # Shouldn't need any interaction besides the sudo password
    for i in "${packages[@]}"; do
        sudo pacman -Sy --noconfirm "$i"
    done

    # Then install everything in list via Yaourt
    if [[ -f "${yaourt_file}" ]]; then
        while read -r line; do
            # Ignore "commented" lines beginning with hash in yaourt_file
            [[ $line = \#* ]] && continue
            #printf '%s\n' "$line" # Check
            yaourts+=("$line")
        done < "${yaourt_file}"
    else
        declare -a yaourts=("i3-gaps-git" "j4-make-config-git" "xfce-theme-greybird" "numix-icon-theme-git" "numix-circle-icon-theme-git" "moka-icon-theme-git" "ttf-mac-fonts" "ttf-computer-modern-fonts" "otf-cm-unicode" "otf-latin-modern" "otf-latinmodern-math" "otf-xits")
    fi
    # Shouldn't need any interaction besides the sudo password, and even then it shouldn't be required for all of them
    for i in "${yaourts[@]}"; do
        yaourt -Sy --noconfirm "$i"
    done
}

# Font configuration
function font_setup() {
    # Find list of installed fonts here: /usr/share/kbd/consolefonts/
    pass
}

# Wallpaper configuration
function wallpaper_setup() {
    # Check directory exists, and if not, create it
    if [[ ! -d "$HOME/wallpapers" ]]; then
        mkdir -p "$HOME/wallpapers"
    fi
    # Check if file exists, and if so, copy to the relevant place; if not, download and rename it
    if [[ -f "$HOME/.dotfiles/SlowmoGuys_Paint.png" ]]; then
        cp "$HOME/.dotfiles/SlowmoGuys_Paint.png" "$HOME/wallpapers/SlowmoGuys_Paint.png"
    else
        cd "$HOME/wallpapers" || exit
        wget http://i.imgur.com/LmYgEH3.png && mv "$HOME/wallpapers/LmYgEH3.png" "$HOME/wallpapers/SlowmoGuys_Paint.png"
    fi
}

# i3 configuration
function i3_setup() {
    if [[ ! -f "$i3_config_file" ]]; then
        mkdir -p "${i3_config_file%/*}"
        cd "${i3_config_file%/*}" || exit
        wget https://raw.githubusercontent.com/jamesprime/dotfiles/arch/.config/i3/config
        #printf "exec --no-startup-id \"pulseaudio --start\"" >> "$i3_config_file"
    fi
    # i3status configuration
    #### CHECK THE BELOW FOR FUNCTIONING...NESS
    printf "%b\n" "order += \"volume master\"" "volume master {" "format = \"V: %volume\"" "device = \"default\"" "mixer = \"Master\"" "mixer_idx = 0" "}" >> "${i3status_file}"

}

# Bootloader (GRUB2) configuration
function grub_setup() {
    # Check file exists, and if not, create it
    if [[ ! -f "${grub_config_file}" ]]; then
        sudo touch "${grub_config_file}"
    fi
    printf "root (hd0,0)\nkernel /boot/vmlinuz-linux root=/dev/disk/by-uuid/[UUID_GOES_HERE] ro\ninitrd /boot/initramfs-linux.img" >> "${grub_config_file}" # I THINK!
}

# SSH configuration
function ssh_setup() {
    # Set up config file
    if [[ "$#" -eq "1" ]]; then
        ssh_config_file="$1"
    elif [[ "$#" -eq "0" ]]; then
        ssh_config_file="$HOME/.ssh/config"
    fi
    {
        printf "Host socrates";
        printf "\tHostName\t\tsocrates.ucl.ac.uk";
        printf "\tUser\t\t\tzccah73";
        printf "\tIdentityFile\t\t%s/.ssh/socrates" "$HOME";
        printf "\tAddKeysToAgent\t\tyes";
        printf;
        printf "Host xenon";
        printf "\tHostName\t\txenon.chem.ucl.ac.uk";
        printf "\tUser\t\t\tjames";
        printf "\tIdentityFile\t\t%s/.ssh/xenon" "$HOME";
        printf "\tAddKeysToAgent\t\tyes";
        printf "\tServerAliveInterval\t120";
        printf "\tProxyCommand\t\tssh zccah73@socrates.ucl.ac.uk -W %%h:%%p";
    } > "$ssh_config_file"

    # Set up UCL SSH connections
    socrates="$HOME/.ssh/socrates"
    socrates_pub="$socrates.pub"
    xenon="$HOME/.ssh/xenon"
    xenon_pub="$xenon.pub"
    if [[ ! -f "$socrates" ]]; then
        ssh-keygen -t rsa -b 4096 -f "$socrates" -q -N ""
    fi
    if [[ ! -f "$xenon" ]]; then
        ssh-keygen -t rsa -b 4096 -f "$xenon" -q -N ""
    fi
    ssh_config "$HOME/.ssh/config"
    # Example: cat .ssh/file.pub | ssh host 'cat >> ~/.ssh/authorized_keys'
    cat "$socrates_pub" | ssh zccah73@socrates.ucl.ac.uk 'cat >> ~/.ssh/authorized_keys'
    cat "$xenon_pub" | ssh xenon 'cat >> ~/.ssh/authorized_keys'
}

# Git installation
function git_setup() {
    # If gitconfig_file exists and is a regular file and not a link, ensure it's the most up-to-date one by grabbing it from github
    if [[ -f "${gitconfig_file}" && ! -L "${gitconfig_file}" ]]; then
        cd "$HOME" || exit
        wget https://raw.githubusercontent.com/jamesprime/dotfiles/master/arch/.gitconfig
    # If gitconfig_file does not exist (as a regular file) and is not a directory, grab the regular file from github
    elif [[ ! -f "${gitconfig_file}" && ! -d "${dotfiles_dir}" ]]; then
        cd "$HOME" || exit
        wget https://raw.githubusercontent.com/jamesprime/dotfiles/master/arch/.gitconfig
    # If dotfiles_dir exists as a directory, then force a softlink from dotfiles_dir/arch/gitconfig_file into $HOME directory
    elif [[ -d "${dotfiles_dir}" ]]; then
        for file in "${dotfiles_dir}/$os/"*; do
            if [[ -d "$file" ]]; then
                mkdir -p "$HOME/${file##*/}"
                ln -sf "$file/"* "$HOME/${file##*/}/"
            elif [[ ! -d "$file" && -f "$file" ]]; then
                ln -sf "$file" "$HOME/${file##*/}"
            fi
        done
    # Otherwise write it out manually
    else
        {
            echo 'filter.lfs.clean=git-lfs clean %f';
            echo 'filter.lfs.smudge=git-lfs smudge %f';
            printf 'filter.lfs.required=true';
            printf 'user.name=jamesprime';
            printf 'user.email=jamesprimephd@gmail.com';
            printf 'alias.co=checkout';
            printf 'alias.cm=commit';
            printf 'alias.st=status';
            printf 'alias.br=branch';
            echo 'alias.hist=log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=short';
            printf 'alias.type=cat-file -t';
            printf 'alias.dump=cat-file -p';
            printf 'core.autocrlf=false';
            printf 'core.safecrlf=true';
        } >> "${gitconfig_file}"
    fi
}

# Sublime installation
function sublime_setup() {
    cd ~ || exit
    # Find out whether it's a 32-bit or 64-bit system, otherwise assume 32-bit
    if [[ "$#" -gt "0" ]]; then
        arch="$1"
    else
        arch="32"
    fi
    # Find out latest build number, otherwise assume 3126
    if [[ "$#" -gt "1" ]]; then
        build="$2"
    else
        build="3126"
    fi
    wget https://download.sublimetext.com/sublime_text_3_build_"$build"_x"$arch".tar.bz2 # CHECK BUILD NUMBER TO ENSURE IT'S THE MOST RECENT ONE, OR UPDATE AFTER INSTALLING!
    tar -xvjf sublime_text_3_build_"$build"_x"$arch".tar.bz2
    sudo mv sublime_text_3 /opt/
    sudo ln -s /opt/sublime_text_3/sublime_text /usr/bin/sublime
    sudo ln -s /opt/sublime_text_3/sublime_text /usr/bin/subl

    # Grab settings from github
    cd ~/.config/sublime-text-3/Packages/User || exit
    git clone https://github.com/jamesprime/sublime.git
    mv sublime/* ./
    mv sublime/.git* ./
    rmdir sublime
    mkdir ../WordCount
    cd .. && git clone https://github.com/titoBouzout/WordCount.git WordCount/
    cd User || exit
    cp -r Theme\ -\ Default/ ../
    cp -r Theme\ -\ Soda/ ../

    # Remember to install ShellCheck for SublimeLinter to use (added to arch_packages)!

    # (Multi)Markdown setup
    # Suggested alternative from AUR https://github.com/russross/blackfriday
}

function firefox_setup() {
    # Navigate to about:config
    firefox about:config &
    # Set browser.backspace_action to 0 (go back a page)
}

# Call all the functions
keyboard_setup
touchpad_setup
git_setup
sublime_setup "$arch" "$build"
