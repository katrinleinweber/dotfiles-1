sudo pacman -Q dropbox

man pacman
ls -a
man conky
reboot
nmtui-connect 
sudo pacman -S i3status i3lock i3-wm
sudo pacman -S i3style
sudo pacman -S i3-style
nmtui-connect 
sudo pacman -S i3-style
sudo pacman -S base-devel wget
wget https://aur.archlinux.org/packages/pa/package-query/package-query.tar.gz
sudo pacman -S --needed base-devel
nmtui-connect 
sudo pacman -S --needed base-devel
nmtui-connect 
wget https://aur.archlinux.org/cgit/aur.git/snapshot/package-query.tar.gz
wget https://aur.archlinux.org/cgit/aur.git/snapshot/yaourt.tar.gz
nmtui-connect 
wget https://aur.archlinux.org/cgit/aur.git/snapshot/yaourt.tar.gz
ls
mkdir builds
mv *.tar.gz builds/
cd builds/
ls
tar -xvf package-query.tar.gz 
tar -xvf yaourt.tar.gz 
ls
cd package-query
makepkg -sri
nmtui-connect 
makepkg -sri
cd ../yaourt
makepkg -sri
pacman -S package-query
sudo pacman -S package-query
nmtui-connect 
sudo pacman -S package-query
sudo pacman -U package-query
sudo pacman -U ../package-query
yaourt -Sy j4-make-config-git
cp /etc/i3status.conf ~/.config/i3status/config
mkdir ~/.config/i3status
cp /etc/i3status.conf ~/.config/i3status/config
man i3status
nmtui-connect 
sudo pacman -S conky
cd
vim .config/i3/config 
man i3-sensible-terminal
chromium
chromium
sudo pacman -S rofi
sudo pacman -S xbacklight feh
sudo pacman -S xbacklight
sudo pacman -S gedit
sudo pacman -S git
vim .config/i3/config 
chromium
sudo pacman -S ttf-ubuntu-font-family
shutdown
man xmodmap
vim .config/i3/config 
cd Downloads/
tar -xjvf lplinux.tar.bz2 
cd lplinux/ && ./install_lastpass.sh
firefox
git --global config
git config --global
cd
ls
ls -a
git
less Downloads/universal_gitconfig 
mv Downloads/universal_gitconfig .gitconfig
man wget
man [[
man [
man test
history | less
sudo yaourt -Sy freetype2-infinality
sudo yaourt -Sy freetype2-infinality
yaourt -Sy freetype2-infinality
yaourt -Sy fontconfig-infinality
man synaptics
sudo pacman -S lxappearance
sudo pacman -Syu
sudo pacman -S chrony
chrony
chronyc
sudo pacman -S xbacklight
ls /sys/class/backlight/
less /sys/class/backlight/acpi_video0/actual_brightness 
less /sys/class/backlight/acpi_video0/max_brightness 
less /sys/class/backlight/acpi_video0/brightness 
less /sys/class/backlight/intel_backlight/max_brightness 
less /sys/class/backlight/intel_backlight/actual_brightness 
less /sys/class/backlight/intel_backlight/brightness 
sudo pacman xorg-xbacklight
sudo pacman -S xorg-xbacklight
xbacklight -dec 10
xbacklight -dec 10
xbacklight -set 50
sudo pacman -S xf86-input-synaptics
sudo pacman -S xf86-input-libinput
sudo pacman -S xf86-input-synaptics
ls /etc/X11/xorg.conf.d/00-keyboard.conf 
less /etc/X11/xorg.conf.d/00-keyboard.conf 
cp /usr/share/X11/xorg.conf.d/70-synaptics.conf /etc/X11/xorg.conf.d/70-synaptics.conf
sudo cp /usr/share/X11/xorg.conf.d/70-synaptics.conf /etc/X11/xorg.conf.d/70-synaptics.conf
sudo cp /usr/share/X11/xorg.conf.d/60-libinput.conf /etc/X11/xorg.conf.d/60-libinput.conf
sudo cp /usr/share/X11/xorg.conf.d/10* /etc/X11/xorg.conf.d/
sudo vim /etc/X11/xorg.conf.d/70-synaptics.conf 
xinput list
xinput list-props "ETPS/2 Elantech Touchpad" | grep Capabilities
reboot
man synaptics
xinput
xinput --list-props 12
xinput --set-prop 12 267 1.5
sudo pacman -Syu
sudo pacman -Syy
sudo vim /etc/X11/xorg.conf.d/60-libinput.conf 
sudo vim /etc/X11/xorg.conf.d/70-synaptics.conf 
clear
clear
sudo vim /etc/X
clear
man xinput
sudo vim /etc/X11/xorg.conf.d/70-synaptics.conf 
reboot
for i in {1..100); do echo "$i"; done
for i in {1..100}; do echo "$i"; done
sudo vim /etc/X11/xorg.conf.d/70-synaptics.conf 
reboot
for i in {1..100}; do echo "$i"; done
sudo vim /etc/X11/xorg.conf.d/70-synaptics.conf 
reboot
for i in {1..100}; do echo "$i"; done
sudo vim /etc/X11/xorg.conf.d/70-synaptics.conf 
reboot
sudo pacman -S thunar
for i in {1..100}; do echo "$i"; done
sudo pacman -S npm
npm install i3-style
npm install i3-style -g
sudo npm install i3-style -g
cp ~/.config/i3/config ~/.config/i3/config.bak
i3-style solarized -o ~/.config/i3/config
i3-msg restart
cp ~/.config/i3/config ~/.config/i3/config_solarized.bak
i3-style archlinux -o ~/.config/i3/config
i3-msg restart
cp ~/.config/i3/config ~/.config/i3/config_archlinux.bak
i3-style base16-tomorrow -o ~/.config/i3/config
i3-msg restart
cp ~/.config/i3/config ~/.config/i3/config_base16-tomorrow.bak
i3-style debian -o ~/.config/i3/config
i3-msg restart
cp ~/.config/i3/config ~/.config/i3/config_debian.bak
i3-style deep-purple -o ~/.config/i3/config
i3-msg restart
cp ~/.config/i3/config ~/.config/i3/config_deep-purple.bak
i3-style default -o ~/.config/i3/config
i3-msg restart
cp ~/.config/i3/config ~/.config/i3/config_default.bak
i3-style flat-gray -o ~/.config/i3/config
i3-msg restart
cp ~/.config/i3/config ~/.config/i3/config_flat-gray.bak
i3-style gruvbox -o ~/.config/i3/config
i3-msg restart
cp ~/.config/i3/config ~/.config/i3/config_gruvbox.bak
i3-style icelines -o ~/.config/i3/config
i3-style lime -o ~/.config/i3/config
i3-msg restart
cp ~/.config/i3/config ~/.config/i3/config_lime.bak
i3-style okraits -o ~/.config/i3/config
i3-msg restart
cp ~/.config/i3/config ~/.config/i3/config_okraits.bak
i3-style purple -o ~/.config/i3/config
i3-msg restart
cp ~/.config/i3/config ~/.config/i3/config_purple.bak
i3-style seti -o ~/.config/i3/config
i3-msg restart
cp ~/.config/i3/config ~/.config/i3/config_seti.bak
i3-style slate -o ~/.config/i3/config
i3-msg restart
cp ~/.config/i3/config ~/.config/i3/config_slate.bak
i3-style tomorrow-night-80s -o ~/.config/i3/config
i3-msg restart
cp ~/.config/i3/config ~/.config/i3/config_tomorrow-night-80s.bak
i3-style ubuntu -o ~/.config/i3/config
i3-msg restart
cp ~/.config/i3/config ~/.config/i3/ubuntu.bak
i3-style icelines -o ~/.config/i3/config
i3-style -l
sudo pacman -Syu
cp ~/.config/i3/config_archlinux.bak ~/.config/i3/config
i3-msg restart
mv ~/.config/i3/ubuntu.bak ~/.config/i3/config_ubuntu.bak
vim .config/i3/config
gtk-launch 
gtk-demo 
sudo pacman -S gtk-themes
sudo pacman -S gtk
sudo pacman -S gtk*
sudo pacman -S gtk3
lxappearance
gtk3
gtk-3.0
sudo pacman -S gnome-themes-standard
sudo pacman -S gtk-engine-murrine
sudo rm -rf /usr/share/themes/{Arc,Arc-Darker,Arc-Dark}
sudo rm -rf ~/.local/share/themes/{Arc,Arc-Darker,Arc-Dark}
sudo rm -rf ~/.themes/{Arc,Arc-Darker,Arc-Dark}
yaourt -Sy gtk-theme-arc
thunar
cd Downloads/
tar -xvf OSX-Arc-Shadow.tar.gz 
ls
mv OSX-Arc-Shadow/ ../builds/
cd ../builds/
ls
rm package-query.tar.gz yaourt.tar.gz 
cd OSX-Arc-Shadow/
ls
cp -r gtk-* ~/.config/
vim ~/.gtkrc02.0
vim ~/.gtkrc-2.0
cd
i3-msg restart
vim ~/.gtkrc-2.0
lxappearance
lxappearance
ls .icons/
sudo pacman -S tint2
yaourt -Sy numix-icon-theme-git
yaourt -Sy numix-circle-icon-theme-git
yaourt -Sy moka-icon-theme-git
yaourt -Sy moka-icon-theme-git
yaourt -Sy moka-icon-theme
yaourt -Sy moka-*
sudo pacman -S font-mathematica
yaourt -Sy ttf-computer-modern-fonts otf-cm-unicode otf-xits ttf-mac-fonts
yaourt -Sy ttf-computer-modern-fonts otf-latin-modern otf-latinmodern-math otf-xits ttf-mac-fonts
yaourt -Sy ttf-computer-modern-fonts
yaourt -Sy ttf-mac-fonts
yaourt -S ttf-mac-fonts
reboot
yaourt -S ttf-mac-fonts
yaourt -S ttf-computer-modern-fonts
yaourt -S otf-cm-unicode
yaourt -S otf-latin-modern
yaourt -S otf-latinmodern-math
yaourt -S otf-xits
sudo pacman -S texlive-core texlive-fontsextra
yaourt -S ttf-monaco ttf-vista-fonts ttf-google-fonts-git
reboot
yaourt -S ttf-google-fonts-git
yaourt -S ttf-monaco
reboot
yaourt -S ttf-monaco
yaourt -S ttf-vista-fonts
sudo pacman -S ttf-dejavu ttf-droid ttf-anonymous-pro ttf-freefont ttf-inconsolata ttf-liberation adobe-source-code-pro-fonts ttf-fira-mono
yaourt -S ttf-ms-fonts
yaourt -S ttf-chromeos-fonts
yaourt -S ttf-envy-code-r
yaourt -S ttf-inconsolata-g
yaourt -S ttf-google-fonts-git
reboot
yaourt -S conky-colors-git
shutdown
sudo pacman -S i3-gaps
yaourt -S i3-gaps-git
cp .config/ config_backup
cp -r .config/ config_backup
ls
ls config_backup/
reboot
vim .xinitrc 
ls -a
yaourt -S archdroid-icon-theme-git
sudo pacman -S ttf-roboto
yaourt -S ttf-roboto
yaourt -S ttf-roboto-font
yaourt -S archdroid-icon-theme-git
reboot
vim .bashrc
yaourt -S archdroid-icon-theme-git
reboot
yaourt -S archdroid-icon-theme-git
yaourt -S lighthouse-git
reboot
yaourt -S lighthouse-git
lighthouse
mkdir ~/.config/lighthouse; cp /usr/share/lighthouse/lighthouserc ~/.config/lighthouse/
vim ~/.config/lighthouse/lighthouserc 
lighthouse
vim ~/.config/lighthouse/lighthouserc 
cp -r /usr/share/lighthouse/ ~/.config/lighthouse/
lighthouse
vim ~/.config/lighthouse/lighthouserc 
mv .config/lighthouse/lighthouse/* .config/lighthouse/
ls .config/lighthouse/
ls .config/lighthouse/lighthouse
ls .config/lighthouse/lighthouse/
rmdir .config/lighthouse/lighthouse/
ls .config/lighthouse/
lighthouse
lighthouse | sh
vim .config/i3/config
mv wallpapers/ .wallpaper
vim .fehbg 
sudo pacman -S vim-plug vim-airline vim-numbertoggle vim-gitgutter vim-trailing-whitespace auto-pairs nerdtree gruvbox
sudo pacman -S htop
sudo pacman -S tlp progress powertop
sudo pacman -S lemonbar-xft
yaourt -S lemonbar-xft
yaourt -S lemonbar-xft-git
yaourt -S redshift-minimal
yaourt -S w3m
yaourt -S rtorrent
yaourt -S tmux
rofi
sudo pacman -Syu
vim .config/gtk-3.0/settings.ini 
reboot
vim .config/i3/config
reboot
vim .fehbg 
rm -rf .config/gtk-2.0/
rm -rf .config/gtk-3.20/
vim .config/i3/config
vim .config/gtk-3.0/settings.ini 
lxappearance
reboot
feh
feh --help
feh --bg-scale .wallpaper/SlowmoGuys_Paint.png 
reboot
vim .fehbg 
mv .wallpaper/ wallpapers
reboot
ls -a
vim .esd_auth 
vim .vimrc
vim .vimrc
vim .dmrc
vim .gitconfig
vim .gtkrc-2.0 
vim .icons/default/index.theme 
vim .Xauthority 
vim .Xresources
sudo pacman -S compton
history
nmtui-connect 
sudo pacman -S compton
sudo pacman -S tint2
mkdir .config/conky
conky -C > .config/conky/conky.conf
vim .config/conky/conky.conf 
vim .config/conky/conky.conf 
usermod -aG log james
sudo usermod -aG log james
vim .config/conky/conky.conf 

vim .config/conky/conky.conf 
sudo pacman -S gcolor2
nmtui-connect 
sudo pacman -S gcolor2
sudo pacman -S xcompmgr transset-df
conky-colors
conky-colors --ring --network --theme=red
conky-colors --ring --network --theme=blue
conky -c /home/james/.conkycolors/conkyrc 
conky-colors --slim --w=1440 --h=900 --theme=white
conky -c /home/james/.conkycolors/conkyrc 
vim /home/james/.conkycolors/conkyrc 
conky-colors --board --w=1440 --h=900 --theme=cyan
conky -c /home/james/.conkycolors/conkyrc 
tint2conf
reboot
wget https://dotshare.it/dots/1226/0/raw/
wget http://dotshare.it/dots/1226/0/raw/
lynx
sudo pacman -S lemonbar
yaourt -S lemonbar
yaourt -S lemonbar-xft-git
echo $XDG_CONFIG_HOME
fontconfig
fontconfig
cp /etc/fonts/fonts.conf 
cp /etc/fonts/fonts.conf $XDG_CONFIG_HOME/fontconfig/fonts.conf
cp /etc/fonts/fonts.conf .config/fontconfig/fonts.conf
mkdir .config/fontconfig
cp /etc/fonts/fonts.conf .config/fontconfig/fonts.conf
vim .config/fontconfig/fonts.conf 
sudo pacman -S iptables
thunar
vim .config/i3/config
reboot
vim .config/i3/config
reboot
shutdown
sudo pacman -Syu
cp /etc/xdg/compton.conf .config/compton.conf
vim .config/compton.conf 
reboot
vim .config/i3/config
vim .bashrc
vim .bash_profile 
vim .bashrc
man shutdown
reboot
vim .config/compton.conf 
reboot
vim .config/i3/config
vim .config/compton.conf 
vim .config/i3/config
reboot
vim .config/compton.conf 
reboot
vim .config/i3/config
reboot
vim .config/i3/config
man i3-sensible-terminal
echo $TERMINAL
vim .bashrc
man urxvt
i3-msg restart
reboot
exit
echo $TERMINAL
urxvt
man urxvt
vim .Xdefaults
ls
vim .Xresources 
vim .Xdefaults
ls
less Xdefaults 
cp Xdefaults .Xdefaults 
vim .Xdefaults 
shutdown
ls -a
vim .Xdefaults 
gnome-terminal
exit
vim .config/i3/config
exit
exit
vim .Xdefaults 
urxvt
reboot
shutdown
vim .config/compton.conf 
reboot
vim .config/compton.conf 
reboot
lynx
vim .Xdefaults 
vim .Xresources 
vim .Xdefaults 
reboot
vim .Xdefaults 
reboot
vim .Xdefaults
reboot
vim .Xdefaults
reboot
firefox
vim .Xdefaults
vim .config/i3/config
firefox &
vim .Xdefaults 
reboot
vim .Xdefaults 
exit
firefox &
lxappearance
gnome-terminal
reboot
sudo pacman -S archiso
sudo pacman -S archiso
firefox &
tzselect
exit
yayayayayayayay it woooorks
sudo pacman -Syu
sudo pacman -S archboot
sudo pacman -Syu
vim .config/i3/config
vim .bashrc
source .bashrc
shutdown
tint2
vim .config/tint2/tint2rc
shutdown
