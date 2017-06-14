#!/bin/bash
# Just documenting a proposed solution to my Linuxing issues with Lenovo IdeaPad 100s
# As found here: askubuntu.com/questions/684041/ubuntu-debian-on-a-lenovo-ideapad-100s-linux-has-issues-with-this-laptop

# First create one large vfat bootable partition and format it
sudo mkfs.vfat /dev/sd??

# Mount images (after downloading if not already downloaded)
wget http://cdimage.debian.org/debian-cd/8.6.0/multi-arch/iso-cd/debian-8.6.0-amd64-i386-netinst.iso
#wget https://UBUNTU.PATH/TO/64-BIT-DESKTOP.ISO (currently only torrentable)

sudo mkdir /mnt/usb && sudo mount /dev/sd?? /mnt/usb
sudo mkdir /mnt/ubuntu && sudo mount "${ubuntu_iso_path}" /mnt/ubuntu

# Copy relevant Ubuntu bits over to the USB drive
sudo cp -a /mnt/ubuntu/* /mnt/ubuntu/.disk /mnt/usb/

# Copy relevant Debian bits over to the USB drive
sudo mkdir /mnt/debian && sudo mount "${debian_iso_path}" /mnt/debian
sudo mkdir -p /mnt/usb/efi/bootable
sudo cp /mnt/debian/efi/boot/bootia32.efi /mnt/usb/efi/boot/
#sudo mkdir -p /mnt/usb/boot/grub/ && \
sudo cp -a /mnt/debian/boot/grub/* /mnt/usb/boot/grub/

# Replace the Debian GRUB2 config file with that of Ubuntu desktop (which actually is already in the loopback.cfg anyway for some reason!)
sudo cp /mnt/usb/boot/grub/loopback.cfg /mnt/usb/boot/grub/grub.cfg

# Unmount USB drive and press Novo button (with it already inserted in IdeaPad 100s), then go up to Boot Menu and you should be able to select the USB drive from there!
sudo umount /mnt/usb
