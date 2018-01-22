https://www.lifewire.com/install-openbox-using-ubuntu-4051832
http://www.everydaylinuxuser.com/2016/06/an-everyday-linux-user-review-of.html
https://www.slant.co/topics/3945/~linux-app-launchers
https://github.com/albertlauncher/albert
http://tools.suckless.org/dmenu/
https://davedavenport.github.io/rofi/
https://davedavenport.github.io/rofi/p11-Generator.html
https://www.ubuntufree.com/easily-install-plank-dock-on-ubuntu-14-04-or-14-10/
https://github.com/emgram769/lighthouse
https://github.com/KELiON/cerebro (bit more than a launcher really)
http://www.omgubuntu.co.uk/2017/02/ulauncher-lightweight-app-launcher-linux
http://ulauncher.io/
https://github.com/kupferlauncher/kupfer
http://www.omgubuntu.co.uk/2010/08/meet-alawalk-possibly-the-lightest-launcher-ever (<-- NOW DISCONTINUED; SEE LAUF BELOW)
https://github.com/joshua-redfield/lauf
https://github.com/tinytacoteam/zazu
https://www.ghacks.net/2017/05/17/a-comparison-of-gnulinux-dock-applications/
https://www.reddit.com/r/linuxmint/comments/4rdcj1/most_lightweight_dock/ (OP HAS FLAIR "FLUFF"!)
http://www.omgubuntu.co.uk/2016/09/plank-dock-themes-pack

SEND TO ISAAC: http://theslot.jezebel.com/yes-america-there-is-a-covfefe-bill-in-the-works-1796042314
http://lifehacker.com/improve-any-dish-with-one-ingredient-1795937477
https://lifehacker.com/the-easiest-way-to-tie-a-bow-tie-1583523991
http://lifehacker.com/office-clothes-that-are-almost-as-comfortable-as-yoga-c-1794956437
http://lifehacker.com/the-joy-of-sweatpants-1792769525
http://lifehacker.com/how-i-wrote-two-full-length-novels-in-18-months-1794785678
http://lifehacker.com/5886128/how-seinfelds-productivity-secret-fixed-my-procrastination-problem
http://lifehacker.com/how-to-keep-your-energy-up-when-you-re-totally-stressed-1794645075
http://jezebel.com/lindsay-lohan-stars-in-new-tv-show-sick-note-continues-1796015659
http://www.bindleandkeep.com/
http://lifehacker.com/get-a-load-of-these-unexpected-uses-for-teabags-1795874294

# Things to install:
`openbox`
`obconf`
`obmenu`
`xcompmgr`
`cairo-dock` (with `OpenGL` support if/when it asks) OR `docky` (to get Plank, which is much simpler, and upon which Docky is based)

# Files to create
`~/.config/openbox/autostart` containing `sh ~/.fehbg && xcompmgr & && cairo-dock &`
