#!/bin/sh

defaultpa="$HOME/.config/pulse/default.pa"
# Do not install if user is root, or $HOME does not exist
if [ "`id -u`" -ne 0 -a -d "$HOME" -a ! -e "$defaultpa" ]; then
    mkdir -p "$HOME/.config/pulse"
    ln -sfT /etc/crouton/pulseaudio-default.pa "$defaultpa"
fi
