#!/bin/bash

# http://solitudo.net/software/awesome/delightful/

cd ~/dev/software

git clone git://scm.solitudo.net/delightful.git
cd delightful
git submodule init
git submodule update

cp -a delightful $HOME/.config/awesome
cp -a submodules/awesome-freedesktop/freedesktop $HOME/.config/awesome
cp submodules/imap/lua/imap.lua/imap.lua $HOME/.config/awesome
cp submodules/weatherlib/src/weatherlib.lua $HOME/.config/awesome
cp submodules/metar/src/metar.lua $HOME/.config/awesome
cp calendar2.lua $HOME/.config/awesome

sudo apt-get install gnome-icon-theme sensors-applet liblua5.1-socket2 liblua5.1-sec1 libgweather-common

