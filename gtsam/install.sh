#!/bin/bash

# GTSAM:
# https://collab.cc.gatech.edu/borg/gtsam

# Download:
wget https://research.cc.gatech.edu/borg/sites/edu.borg/files/downloads/gtsam-3.2.1.tgz

# Unpack:
tar xzf gtsam-3.2.1.tgz

# Install:
cd gtsam-3.2.1
mkdir build
cd build
cmake .. -DCMAKE_INSTALL_PREFIX=/usr
sudo make -j8 install
cd ../..

