#!/bin/bash

# http://jacoposerafin.com/nicp/index.php/tutorials/tutorial-how-to-download-and-compile-nicp-library/
sudo apt-get install libeigen3-dev libopencv-dev cmake cmake-curses-gui git libqglviewer-dev libqglviewer-qt4-dev libqt4-dev freeglut3-dev

cd ~/software
git clone https://github.com/yorsh87/nicp.git

cd nicp

mkdir build
cd build
cmake ..
make -j4

