#!/bin/bash

# http://ceres-solver.org/building.html

# google glog on Ubuntu 12.04:
# https://launchpad.net/~tuleu/+archive/ubuntu/precise-backports
sudo add-apt-repository -y ppa:tuleu/precise-backports
sudo apt-get update

sudo apt-get install -y cmake libgoogle-glog-dev libatlas-base-dev libeigen3-dev libsuitesparse-dev

OLD_PWD=$PWD
cd ~/software

# ceres-solver needs Eigen/SparseCore, which needs Eigen 3.2.*
hg clone https://bitbucket.org/eigen/eigen/
cd eigen
mkdir build
cd build
cmake ..
sudo make install
cd ../..

# ceres-solver
git clone https://ceres-solver.googlesource.com/ceres-solver
cd ceres-solver
mkdir build
cd build
cmake .. -DEIGEN_SPARSE=ON
make -j4
make test
sudo make install

cd $OLD_PWD

