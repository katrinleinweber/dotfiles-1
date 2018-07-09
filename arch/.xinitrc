if [ -d /etc/X11/xinit/xinitrc.d ]; then
	for f in /etc/X11/xinit/xinitrc.d/?*.sh; do
		[ -x "$f" ] && . "$f"
	done
	unset f
fi

# Switch screensaver on after an hour (rather than the default 10 minutes)
xset s 3600 3600
# Set DPMS settings to follow suit
xset dpms 3600 3600 3600

#exec i3
exec openbox-session
