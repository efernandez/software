#!/bin/bash

if [[ $# > 1 ]]; then
    ROS_DISTRO=$1
else
    ROS_DISTRO=hydro
fi

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -cs) main" > /etc/apt/sources.list.d/ros-latest.list'

wget https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -O - | sudo apt-key add -

sudo apt-get update

sudo apt-get install ros-$ROS_DISTRO-desktop-full
sudo apt-get install ros-$ROS_DISTRO-roslint
sudo apt-get install ros-$ROS_DISTRO-rqt*

sudo rosdep init
rosdep update

echo "source /opt/ros/hydro/setup.bash" >> ~/.bashrc
source ~/.bashrc

