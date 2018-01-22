OK, so, just to keep better track of what the hell all these files are doing:

`autostart`s:

* `autostart_archtint2-feh-compton` is the original `autostart` I'd set up for Openbox with, duh, Arch
* `autostart_feh-only` just sets the `feh` background image from the default path to `~/.fehbg`
* `autostart_feh-tint2-compton` is the current `autostart` being tested on my ThinkPad Edge 11

`rc.xml`s:

* `rc.xml` is a more customised version, which (if I remember correctly, which I may well not have) was primarily trying to get the shortcuts to approximate those in my `i3` config, including desktop names; no themes or anything were added though
* `rc_ubuntu.xml` is less customised by way of shortcuts, I think, but has the Numix theme specified, and is set up to call the usual Ubuntu applications instead of the standalones in the above
* `rc_numixblue.xml` sets the NumixBlue theme, and includes commands for starting `rofi` and `gnome-terminal`
