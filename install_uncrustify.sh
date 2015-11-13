#!/bin/bash

# Download uncrustify:
cd ~/software
git clone git@github.com:bengardner/uncrustify.git

# Install uncrustify:
cd uncrustify
./configure
make -j8
sudo make install
cd ..

echo "Usage: uncrustify -c ~/.uncrustify/uncrustify-ros-cpp.cfg -f file.cpp > file.cpp.unc"

