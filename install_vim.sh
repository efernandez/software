#!/bin/bash

# This is needed by:
# - clipboard copy&paste: http://vim.wikia.com/wiki/Accessing_the_system_clipboard
# - YCM (YouCompleteMe) plugin

cd ~/software

hg clone https://vim.googlecode.com/hg/ vim
cd vim

./configure --enable-pythoninterp --with-python-config-dir=/usr/lib/python2.7/configmake -j8
sudo make install

sudo update-alternatives --install /usr/bin/vim vim /usr/local/bin/vim 10
sudo update-alternatives --set vim /usr/local/bin/vim

