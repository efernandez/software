#!/bin/bash

# This is needed by:
# - clipboard copy&paste: http://vim.wikia.com/wiki/Accessing_the_system_clipboard
# - YCM (YouCompleteMe) plugin

SOFTWARE_FOLDER=~/software

if [[ ! -d $SOFTWARE_FOLDER ]]
then
    mkdir -p $SOFTWARE_FOLDER
fi

OLD_PWD=$PWD
cd $SOFTWARE_FOLDER

hg clone https://vim.googlecode.com/hg/ vim
cd vim

./configure --enable-pythoninterp --with-python-config-dir=/usr/lib/python2.7/config
make -j8
sudo make install

sudo update-alternatives --install /usr/bin/vim vim /usr/local/bin/vim 10
sudo update-alternatives --set vim /usr/local/bin/vim

# .vimrc
git clone --recursive git@github.com:efernandez/vim-config.git ~/.vim
if [[ -f ~/.vimrc ]]
then
    mv ~/.vimrc{,.orig}
fi
ln -s ~/.vim/vimrc ~/.vimrc
cd ~/.vim
git submodule update --init
vim +BundleInstall

cd $OLD_PWD

