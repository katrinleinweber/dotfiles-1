sudo apt-get install mercurial

hg clone https://vim.googlecode.com/hg/ ~/vim
cd ~/vim
hg update -C v7-3-154
./configure --with-features=huge  --disable-largefile \
            --enable-perlinterp   --enable-pythoninterp \
            --enable-rubyinterp   --enable-gui=gtk2 \

make
sudo make install