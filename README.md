# `dotfiles`

Remote copy of my usual dotfiles and the like.  I tend to move between a fair bunch of machines, many with differing distros (Windows is the only OS I actively avoid), so I'm just trying - and mostly failing - to keep track.  It's not very manageable at the moment, being a total shitstorm of disorganisation, so while I seek out better solutions, this is what I'm going with.

## Directories

* `arch`: The dotfiles for my Arch machines
* `chroot`: The dotfiles used on my Ubuntu chroot on my Chromebook
* `mac`: The dotfiles for my Mac machines
* `reference`: Lots of reference information for myself, when I inevitably forget where things are supposed to go, and some examples/template files in case they're ever needed.  Also some scripts in various stages of completion which are designed to eventually be useful for automating stuff for myself later
* `ubuntu`: The dotfiles for my Ubuntu machines
* `wip`: The dotfiles in progress, to eventually replace all the disparate directories on its level!
* `xenon`: The dotfiles for my account on Xenon

## Specifics

For my own future reference, I'm dumping things like what things are dependent on what files in what places and so on, because I'm guaranteed to forget it every sodding time I need it.  I may dump code snippets in here as I go along as well, because I'm me, and I can't handle the thought of not finding something when I need it.  So.

* Find lots of useful ricing-related information [here](https://www.reddit.com/r/unixporn/wiki/ricerous_info)
* Useful thing I keep coming back to re-Googling, every time I forget, which is basically every time I need it:
    - Status bar: simple block of text information that sticks to one side of your screen; designed to show the change in something over time (e.g. CPU usage, RAM usage, etc):
        + [Lemonbar](https://github.com/LemonBoy/bar); requires `libxcb-xinerama0-dev` and `libxcb-randr0-dev` (on Ubuntu, anyway)
        + [Dzen](http://robm.github.io/dzen/); configure using `~/.Xresources` (see [ArchWiki](https://wiki.archlinux.org/index.php/Dzen) for more details)
        + [Candybar](https://github.com/Lokaltog/candybar); requires a fair few things, so check its wiki for details
        + [Polybar](https://github.com/jaagr/polybar); yet to test
    - Panel: also sticks to one side of your screen, but allows you to manipulate windows, and includes clickable widgets:
        + [tint2](https://wiki.archlinux.org/index.php/Tint2)
    - Dock: program that regroups certain widgets (like a panel) to make it easier to open up programs, and may have a window-manipulation feature:
        + [Cairo-Dock](https://wiki.archlinux.org/index.php/Cairo-Dock)
    - Conky: information display
    - Taskbar: all the features of a panel, plus a menu, manages non-daemon programs that run in the background, manages popup notification-y things, and so on
* I can't believe there is actually such a thing as a [terminal screensaver](https://github.com/pipeseroni/pipes.sh), but there is!

### `tint2` taskbar/panel thingy

Need to have `xcompmgr` and `compton` installed to get transparency effects.  The default place for themes to be saved (and looked for upon starting) is `~/.config/tint2/tint2rc`.  You can set it to run several themes at once by calling it twice and pointing to each different theme-containing file: `tint2 -c /path/to/first/file & ; tint2 -c /path/to/second/file`.

### Openbox

Themes will need to be copied or symlinked into `~/.themes/` for them to be recognised using `obconf`.  Any theme that Openbox can recognise will have a file called `themerc` in the `openbox-3` directory of its (theme-named) parent directory.

Openbox also expects to find `autostart`, `menu.xml`, and `rc.xml` files in `~/.config/openbox/`.  `autostart` contains commands for things like background-loaders (`feh`, `nitrogen`, etc), composite managers (`compton`, etc), docks/launchers/taskbars/panels/that kind of thing (`tint2`, etc).  `menu.xml` contains the configuration for the right-click menu - order of items, sub-menus, and so on.  `rc.xml` contains the configuration for the window layout, theme, keyboard shortcuts, etc.

### `~/.Xresources`

The `~/.Xresources` file contains lots of useful configuration settings for things like `rofi` and `urxvt`, so if those are required things on your system, make sure it's well-organised.

* Define variables for ease of reference later on: `#define var_name value`, and just reference them with their name, unquoted, when necessary
* Split up program-specific things into separate files, and include them in your `.Xresources` file with `#include "/path/to/file"`