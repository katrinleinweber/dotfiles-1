git rm --cached *.sublime*
git status
vim .gitignore 
git add *
git status
git add .gitignore 
git status
git commit -m "Removed tracking of fyreport_tex_thesis.sublime-project and -workspace, and updated .gitignore"
git push both master
cd ..
git add *
git status
git commit -m "Updated .gitignore files"
git push fyreport master
cd ../../
git add *
git status
git add .gitignore .sync/
git status
git commit -m "Updated .gitignore files"
cd writings_mac/
ls
rm tex/*
cd syreport/
cd ../fyreport/mmd/
cp ~/bin/link_fyreport.sh ~/bin/unlink_fyreport.sh
vim ~/bin/unlink_fyreport.sh 
chmod +x ~/bin/unlink_fyreport.sh 
~/bin/unlink_fyreport.sh 
vim ~/bin/unlink_fyreport.sh 
~/bin/unlink_fyreport.sh 
vim ~/bin/unlink_fyreport.sh 
vim ~/bin/unlink_fyreport.sh 
~/bin/unlink_fyreport.sh 
cp ~/bin/link_overleaf.sh ~/bin/unlink_overleaf.sh
vim ~/bin/unlink_overleaf.sh 
chmod +x ~/bin/unlink_overleaf.sh 
~/bin/unlink_overleaf.sh 
vim ~/bin/unlink_fyreport.sh 
~/bin/unlink_fyreport.sh 
cp ~/bin/link_fyreport.sh ~/bin/syreport.sh
echo >> ~/bin/link_fyreport.sh 
cat ~/bin/link_overleaf.sh >> ~/bin/link_fyreport.sh 
vim ~/bin/link_fyreport.sh 
rm ~/bin/link_overleaf.sh 
echo >> ~/bin/unlink_fyreport.sh 
cat ~/bin/unlink_overleaf.sh >> ~/bin/unlink_fyreport.sh 
vim ~/bin/unlink_fyreport.sh 
rm ~/bin/unlink_overleaf.sh 
cp ~/bin/link_fyreport.sh ~/bin/link_syreport.sh
rm ~/bin/syreport.sh 
vim ~/bin/link_syreport.sh 
git add *
git status
cd ..
git add *
git status
git add tex_overleaf
git status
git commit -m "Renamed mmd to tex_plain, renamed tex_overleaf to tex_thesis, made new mmd directory and moved all .mmd files into there"
git add *
git status
checkout pre-rm
git checkout pre-rm
git checkout master
git add *
git status
git pull --help
git pull master pre-rm
git merge --help
git merge pre-rm
ls
git add *
git status
git add gulp.tex main.tex
git status
git commit -m "Cleaning up directories"
git push fyreport master
git merge pre-rm
cd ..
cd syreport/
ls
git init
cd tex_plain/
ls
rm cp2k.tex dehydrate.tex fyreport_main.pdf fyreport_outline.pdf gulp.tex gulp_parameters.tex introduction.tex literature_review.tex makebst.log methodology.tex mmd.sublime-workspace mmd_tex.sublime-* original_contribution.tex plan_timetable.tex preamble.[^t]*
ls
rm main.[abflos]*
rm main.toc 
ls
git init
ls -al
rm .git
rm -rf .git
git init
git add *
vim .gitignore 
vim .gitignore 
git add *
git rm --cached texify.sh 
git status
git add .gitignore 
git rm --cached main.pdf
vim .gitignore 
git add *
git status
git add .gitignore 
git status
git commit -m "First commit of second-year report from submitted version of first-year report"
cd ../tex_thesis/
ls
ls -al
rm -rf .git
ls -al
rm 00_Introduction.tex 01_* 02_* 03_* 04_* 05_*
rm Main.[abfls]*
rm Main.toc
mv SafeHavenWords.txt ~/Documents/
mv ~/Desktop/PhD/writings_mac/fyreport/tex_thesis/SafeHavenWords.txt ~/Documents/
rm example.bib fyreport_tex_thesis.sublime-* latex_syntax_issues.md
less texput.log 
rm texput
rm texput.log 
ls
git init
vim .gitignore 
vim .gitignore 
git add *
git status
vim .gitignore 
git add *
git status
git add .gitignore 
git status
git commit -m "First commit of second-year report from submitted version of first-year report"
git remote -v
ls
git add *
git status
git commit -m "Added newly-renamed files from Google Drive"
cd ../tex_plain/
ls
rm 00_Introduction.tex 01_LitReview.tex 02_Methodology.tex 03_ResultsDiscussion.tex 04_PlanTimetable.tex 
git add *
git status
git rm 00_Introduction.tex 01_LitReview.tex 02_Methodology.tex 03_ResultsDiscussion.tex 04_PlanTimetable.tex 
git status
git commit -m "Added newly-renamed files from Google Drive"
cd ../..
cd fyreport/tex_plain/
git remote -v
git remote --help
git remote set-url -h
cd ../tex_thesis ; git remote set-url fyreport https://github.com/jamesprime/fyreport-thesis.git
git remote -v
cd ../tex_thesis ; git remote set-url fytexRemote https://github.com/jamesprime/fyreport-thesis.git
git remote -v
cd ../tex_thesis ; git remote set-url both https://github.com/jamesprime/fyreport-thesis.git https://github.com/jamesprime/overleaf.git
cd ../tex_thesis ; git remote set-url --push both https://github.com/jamesprime/fyreport-thesis.git https://github.com/jamesprime/overleaf.git
git remote -v
cd ../../syreport/
git remote add syreport https://github.com/jamesprime/syreport.git
cd tex_plain/
cd ../../fyreport/tex_thesis/
git remote rename fytexRemote fyreport
git remote -v
cd ../../syreport/tex_plain/
ls
cd ..; git push -u syreport master
git push -u origin master
git remote -v
git push syreport master
git status
git add graphics/ tex_plain/ tex_thesis/
git status
git commit -m "Added new directories"
git push syreport master
cd tex_plain/
git remote add syreport https://github.com/jamesprime/syreport-plain.git
git push syreport master
cd ../tex_thesis/
git remote add syreport https://github.com/jamesprime/syreport-thesis.git
git push syreport master
cd ../tex_plain/
git add *
vim ~/.bash_profile
relink
vim ~/.bash_profile
vim ~/bin/link_syreport.sh 
vim ~/bin/link_bib.sh 
source ~/.bash_profile
relink
git add *
relink
relink
relink
vim ~/bin/link_bib.sh 
sshe xenon
ssh xenon
cd Desktop/PhD/xenon/data/test/nat/gs/
cd ~/Desktop/PhD/xenon/
scp -r xenon:~/ .
cd Desktop/PhD/xenon/data/test/nat/gs/
cd ~/Desktop/PhD/xenon/data/test/nat/gs/
scp -r xenon:~/data/test/nat/gs/nat_data.tsv ../../R/
scp -r xenon:~/data/test/nat/gs/nat_data.tsv ../../../R/
scp -r xenon:~/data/test/sco/gs/sco_data.tsv ../../../R/
scp -r xenon:~/data/test/mes/gs/mes_data.csv ../../../R/
cp ~/Desktop/PhD/bin/addToPath.bat /Volumes/KINGSTON/
vim .bash_profile
cd bin
vim link_bib.sh 
vim link_bib.sh 
vim link_fyreport.sh 
vim link_syreport.sh 
vim link_syreport.sh 
ls
chmod +x link_syreport.sh 
./link_syreport.sh 
vim link_syreport.sh 
./link_syreport.sh 
vim link_syreport.sh 
./link_syreport.sh 
./link_syreport.sh 
cd ../Library/Application\ Support/Sublime\ Text\ 3/Packages/User/
git add *
git status
git add .gitignore 
git status
git commit -m "Updated colour schemes and fixed sidebar issues in Default.sublime-theme"
git push sublime master
git add *
git status
git commit -m "Updated colour schemes and various sublime-settings (LaTeX, LaTeXTools, LaTeXing, Markdown) and fixed further sidebar issues in Default.sublime-theme"
git push sublime master
ssh xenon
sudo diskutil list
diskutil
sudo diskutil mount
sudo diskutil mountDisk
mount
sudo diskutil list
sudo diskutil eraseDisk /dev/disk1
sudo diskutil eraseDisk dos Kingston /dev/disk1
sudo diskutil eraseDisk msdos Kingston /dev/disk1
diskutil listFilesystems
sudo diskutil eraseDisk fat32 Kingston /dev/disk1
sudo diskutil eraseDisk fat32 AAAA /dev/disk1
sudo diskutil disableOwnership /dev/disk1
mount
mount
sudo mount
sudo diskutil list
mount
sudo diskutil list
mount
mount
mount
mount
mount
mount
mount
sudo diskutil list
sudo mount
sudo mount
sudo unmount
sudo umount
sudo mount
cd Documents/launchpad/
ls -a
cd 
ssh xenon
ssh xenon
sudo diskutil mount
diskutil list
sudo chmod 777 /dev/disk2
diskutil list
sudo diskutil 
sudo diskutil eraseDisk
sudo diskutil eraseDisk --help
sudo diskutil eraseDisk fat32 'Blah' MBR disk2
sudo diskutil eraseDisk fat32 blah MBR disk2
sudo diskutil eraseDisk fat32 AAAA MBR disk2
gpt -h
gpt --help
gpt help
man gpt
gpt remove -h
gpt remove 
gpt remove -a /dev/disk2
sudo gpt remove -a /dev/disk2
sudo gpt remove -a disk2
man gpt
gpt destroy -a /dev/disk2
gpt destroy -r /dev/disk2
sudo gpt destroy -r /dev/disk2
diskutil
diskutil list
sudo diskutil unmountDisk force /Volumes/NO\ NAME
sudo diskutil eraseDisk MS-DOS NO NAME /dev/disk2
sudo diskutil eraseDisk MS-DOS "NO\ NAME" /dev/disk2
sudo diskutil eraseDisk MS-DOS "NO NAME" /dev/disk2
ssh xenon
ssh xenon
mkdir ~/Google\ Drive/test; scp -r xenon:~/data/test/nat/gs/* ~/Google\ Drive/test
cd Google\ Drive/test/
ls
rm *.o*
ls
rm nat00_hydrated_*
rm nat00_hydrated.gout-1 
ls
man ln
mkdir ~/Google\ Drive/bin
cd ..
mv autoconfig\ \(1\).sh bin/autoconfig.sh
mv chroot_setup.sh bin
ls bin
less dehydrate 
mv doi_grabber.sh bin
mv gulp_convert.sh gulp_coords.py texmake.sh bin
cd test
ln ~/Google\ Drive/bin/gulp_convert.sh ./gulp_convert.sh
vim gulp_convert.sh 
cd Library/Application\ Support/Sublime\ Text\ 3/Packages/User/
git add *
git status
git commit -m "Updated MonokaiFluffed colour scheme, MMD and Package Control settings"
git add *
git status
git commit -m "Finally fixed syntax highlighting issues for shell scripts in MonokaiFluffed, thanks to an awareness of the highlighting's sudden failure following ST3 caching when opened, along with a disabling of now-unsupported packages in Package Control, and also aided by the use of a new package called Color Scheme Editor (Shift+F12 to toggle on and off)"
git push sublime master
ssh xenon
exit
/Users/jcprime/Documents/US/Soft ; exit;
nmap
nmap
nmap -sn 192.168.1.0/24
ssh pi@192.168.1.1
ssh pi@192.168.1.3
nmap -sn 192.168.1.0/24
arp -a
nmap -sn 192.168.1.0/24
ssh pi@192.168.2.255
ssh pi@192.168.1.255
ssh pi@192.168.1.4
raspberrypi
raspberrypi.local
ssh raspberrypi.local
ssh raspberrypi
ssh raspberrypi.local
ssh pi@raspberrypi.local
sudo diskutil list
sudo diskutil eraseDisk /dev/disk2
sudo diskutil
history
sudo diskutil erase /dev/disk2
sudo diskutil eraseDisk /dev/disk2
sudo diskutil eraseDisk fat32 NOOBS MBR /dev/disk2
sudo unmountDisk /dev/disk2
sudo umountDisk /dev/disk2
sudo diskutil unmountDisk /dev/disk2
mount
diskutil list
sudo diskutil eraseDisk fat32 NOOBS MBR /dev/disk2
exit
ssh pi@raspberrypi
sudo chmod 777 /dev/disk2
sudo chmod 777 /Volumes/boot/
sudo chmod 777 /Volumes/RECOVERY/
cd /Volumes/RECOVERY/
ls
ls -al
ls -a
ls -al
rm *
y
rm *
ls
cd
mount
ssh pi@raspberrypi
ssh pi@raspberrypi.local
ssh pi@raspberrypi.local
ssh pi@raspberrypi.local
ssh pi@raspberrypi
sudo ssh pi@raspberrypi.local
scp ~/Downloads/LCD-show-160520.tar.gz pi@raspberrypi:~
scp ~/Downloads/LCD-show-160520.tar.gz pi@raspberrypi.local:~
ssh pi@raspberrypi.local
ssh pi@raspberrypi.local
ssh pi@raspberrypi.local
ssh pi@raspberrypi
ssh pi@raspberrypi.local
sudo ssh pi@raspberrypi.local
ssh pi@raspberrypi.local
ssh pi@raspberrypi.local
exit
ssh pi@raspberrypi.local
ssh pi@raspberrypi.local
ssh pi@raspberrypi
exit
sudo ssh pi@raspberryi.local

nmap -sn 192.168.1.0/24
ssh pi@raspberrypi.local
ssh pi@raspberrypi.local
ssh pi@192.168.1.4
sudo ssh pi@192.168.1.4
sudo ssh pi@192.168.1.3
sudo ssh pi@192.168.1.1
ssh pi@raspberrypi.local
ssh pi@raspberrypi.local
ssh pi@raspberrypi
ssh pi@raspberrypi
ssh pi@raspberrypi.local
ssh raspberrypi
ssh raspberrypi.local
exit
ssh raspberrypi.local
history
ssh pi@raspberrypi.local
exit
ssh xenon
ssh xenon
exit
ssh pi@raspberrypi.local
diskutil list
diskutil list
diskutil list
diskutil unmountDisk /dev/disk1
sudo dd bs=1m if=~/Downloads/2016-05-27-raspbian-jessie.img of=/dev/rdisk1
ssh pi@raspberrypi.local
vim /Users/jcprime/.ssh/known_hosts 
ssh pi@raspberrypi.local
ssh pi@raspberrypi.local
ssh pi@raspberrypi.local
ssh pi@raspberrypi.local
ssh pi@raspberrypi.local
ssh pi@raspberrypi.local
ssh pi@raspberrypi.local
ssh xenon
ssh xenon
ssh xenon
ssh xenon
ssh xenon
ssh xenon
ssh xenon
ssh xenon
ssh xenon
ssh xenon
cd ~/Google\ Drive/bin/
vim gulp_convert.sh 
cd Downloads/
scp archives/LCD-show-160520.tar.gz pi@raspberrypi.local
scp archives/LCD-show-160520.tar.gz pi@raspberrypi.local:~
cd /Users/jcprime/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/
git add *
git status
git commit -m "Status of User directory prior to editing of shell-script settings to make clearer distinctions between the oranges and yellows in the existing colour scheme"
git push sublime master
git pull sublime master
git push sublime master
git add *
git status
git commit -m "Updated colour schemes (MonokaiFluffed.tmTheme) for shell scripts so less confusion on the page now"
git push sublime master
exit
ssh xenon
ssh xenon
cd Downloads/
ls
man dd
diskutil list
sudo dd bs=1m if=arch-anywhere-2.2.2-dual.iso of=/dev/disk1
sudo diskutil unmountDisk /dev/disk1
sudo dd bs=1m if=arch-anywhere-2.2.2-dual.iso of=/dev/disk1
sudo diskutil --help
diskutil -h
diskutil
diskutl eject /dev/disk1
diskutil eject /dev/disk1
ssh xenon
mv Accessibility\ and\ the\ Internet.docx ~/Google\ Drive/
ssh xenon
diskutil list
ls
ls *.iso
mv arch-anywhere-2.2.2-dual.iso archives/
ls archives/
mv gparted-live-0.26.1-5-i686.iso archives/
diskutil list
sudo dd bs=1m if=archives/gparted-live-0.26.1-5-i686.iso of=/dev/disk1
sudo diskutil unmountDisk /dev/disk1
ls archives/
tar xzvf archlinux-bootstrap-2016.08.01-i686.tar.gz 
sudo dd bs=1m if=arch-anywhere-2.2.2-dual.iso of=/dev/disk1
diskutil list
sudo dd bs=1m if=archives/arch-anywhere-2.2.2-dual.iso of=/dev/disk1
sudo diskutil unmountDisk /dev/disk1
