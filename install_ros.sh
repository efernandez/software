#!/bin/bash

if [[ $# > 1 ]]; then
    ROS_DISTRO=$1
else
    ROS_DISTRO=hydro
fi

UBUNTU_DISTRO=`lsb_release -a 2>/dev/null | grep -i codename | awk '{print $2}'`

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu ${UBUNTU_DISTRO} main" > /etc/apt/sources.list.d/ros-latest.list'

wget https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -O - | sudo apt-key add -

sudo apt-get update

sudo rosdep init
rosdep update

echo "source /opt/ros/hydro/setup.bash" >> ~/.bashrc
source ~/.bashrc

