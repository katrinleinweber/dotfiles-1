#!/bin/bash

wget -0 /dev/null test_link/test1Mb.db
wipefs
mkdfs.ext4
mnt /dev/sdXn
wget mirrorlist=GB
somethingelse mirrorlist #fetchmirrorlist??
pacman -Sy
pacman -S base base-devel grub netctl wireless_tools wpa_supplicant wpa_actiond dialog bluez bluez-utils os-prober
locale-gen
ln somethingelse
systemctl enable dhcpcd
passwd root rootpassword
useradd -m -G users james -s /bin/bash
passwd james jamespassword
usermod -a -G wheel james
pacman -Sy
pacman -S openbox i3-wm lightdm lightdm-gtk-greeter xorg-server xorg-server-utils xorg-xinit xterm xf86-input-synaptics blueman
# Audio stuffs
pacman -S audacity mpd ncmpcpp pulseaudio
# Graphics stuffs
pacman -S feh graphviz imagemagick
# Internet-y stuffs
pacman -S chromium filezilla firefox lynx thunderbird transmission-cli
# Multimedia stuffs
pacman -S mplayer mpv simplescreenrecorder smplayer vlc
# Office-y stuffs
pacman -S gnumeric
# Terminal stuffs
pacman -S rxvt-unicode terminator xfce4-terminal
# Text editor stuffs
pacman -S gedit gvim neovim vim
# Shell-y stuffs
pacman -S zsh
# System-y stuffs
pacman -S arch-wiki conky dmenu fetchmirrors git gparted htop inxi nmap openssh ranger screen screenfetch scrot tmux ufw wget
