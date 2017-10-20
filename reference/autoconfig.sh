#!/bin/bash
# autoconfig.sh
# Sets up config files that I would otherwise have to manually edit over and over again when installing a new Linux distro
# DEPRECATED; SEE ARCH_CONFIG.SH AND BOOTSTRAP_WIP.SH PLEASE!

# Chromebook touchpad configuration
if [ ! -f "/etc/X11/xorg.conf.d/50-cros-touchpad.conf" ]; then
    touch "/etc/X11/xorg.conf.d/50-cros-touchpad.conf"
elif [ -f "/etc/X11/xorg.conf.d/50-cros-touchpad.conf" ]; then
    > "/etc/X11/xorg.conf.d/50-cros-touchpad.conf"
fi
echo "Section \"InputClass\"" >> /etc/X11/xorg.conf.d/50-cros-touchpad.conf
echo "Identifier\t\"touchpad peppy cyapa\"" >> /etc/X11/xorg.conf.d/50-cros-touchpad.conf
echo "\tMatchIsTouchpad\t\"on\"" >> /etc/X11/xorg.conf.d/50-cros-touchpad.conf
echo "\tMatchDevicePath\t\"/dev/input/event*\"" >> /etc/X11/xorg.conf.d/50-cros-touchpad.conf
echo "\tMatchProduct\t\t\"cyapa\"" >> /etc/X11/xorg.conf.d/50-cros-touchpad.conf
echo "\tOption\t\t\t\"FingerLow\" \"10\"" >> /etc/X11/xorg.conf.d/50-cros-touchpad.conf
echo "\tOption\t\t\t\"FingerHigh\" \"10\"" >> /etc/X11/xorg.conf.d/50-cros-touchpad.conf
echo "EndSection" >> /etc/X11/xorg.conf.d/50-cros-touchpad.conf

# Bootloader (GRUB2) configuration
echo "root (hd0,0)\nkernel /boot/vmlinuz-linux root=/dev/disk/by-uuid/[UUID_GOES_HERE] ro\ninitrd /boot/initramfs-linux.img" >> /boot/grub/menu.lst # I THINK!

# Git installation


# Sublime installation
cd ~
wget https://download.sublimetext.com/sublime_text_3_build_3314_x32.tar.bz2 # CHECK BUILD NUMBER TO ENSURE IT'S THE MOST RECENT ONE, OR UPDATE AFTER INSTALLING!
tar -xvjf sublime_text_3_build_3314_x32.tar.bz2
sudo mv Sublime\ Text\ 3 /opt/
sudo ln -s /opt/Sublime\ Text\ 3/sublime_text /usr/bin/sublime
