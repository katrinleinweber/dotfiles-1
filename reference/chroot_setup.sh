#!/bin/bash
# chroot_setup.sh
# Keeps commands for setting up and updating chroots on Chromebook all in one place and easily run from CLI

# Create Ubuntu Xenial chroot with XFCE desktop environment, with encryption key in ~/Downloads, to /media/removable/USB\ Drive
sudo sh -e ~/Downloads/crouton -e -k ~/Downloads/ -r xenial -t x11,xfce,xfce-desktop,touch,keyboard,gtk-extra,core,cli-extra,extension,xiwi -p /media/removable/USB\ Drive

# Update chroot
sudo sh -e ~/Downloads/crouton -u -e -k ~/Downloads/ -r xenial -t x11,xfce,xfce-desktop,touch,keyboard,gtk-extra,core,cli-extra,extension,xiwi -p /media/removable/USB\ Drive

# Start chroot
cd /media/removable/USB\ Drive/bin; sudo bash startxfce4

# Start Sublime Text 3 FROM chroot IN Chrome OS
cd /media/removable/USB\ Drive/bin; sudo bash enter-chroot xiwi subl

# Install arch chroot using croagh (from https://github.com/drinkcat/chroagh)
cd ~/Downloads
wget https://api.github.com/repos/drinkcat/chroagh/tarball -O chroagh.tar.gz
tar xvf chroagh.tar.gz
cd drinkcat-chroagh-*
sudo sh -e installer/main.sh -r arch -t xfce