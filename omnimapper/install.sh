#!/bin/bash

# Debian dependencies:
cat debians.txt | grep -v \# | xargs sudo apt-get install -y

# GTSAM:
../gtsam/install.sh

# ROS:
# We have to remove libopenni-sensor-pointclouds0 because it conflicts
# with ros-indigo-openni-launch
sudo apt-get remove libopenni-sensor-pointclouds0
sudo apt-get install ros-indigo-perception-pcl ros-indigo-openni-launch

