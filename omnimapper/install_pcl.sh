#!/bin/bash

# Clone repository:
git clone git@github.com/PointCloudLibrary/pcl.git

# Install (compiling with GTSAM Eigen library):
OLDPWD=$(pwd)

cd pcl
mkdir build
cd build
cmake -DEIGEN_INCLUDE_DIR="~/software/gtsam-3.2.1/gtsam/3rdparty/Eigen" ..
make -j8
sudo make install

cd $OLDPWD

