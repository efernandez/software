#!/bin/bash

# Repository for OpenSCAD:
sudo add-apt-repository ppa:openscad/releases
sudo apt-get update

# Install all debians:
cat debians.txt | grep -v \# | xargs sudo apt-get install -y

