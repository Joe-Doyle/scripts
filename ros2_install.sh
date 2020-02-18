#!/bin/bash
#Install script for ros2 eloquent on ubuntu 18

#setup local
sudo locale-gen en_US en_US.UTF-8
sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
export LANG=en_US.UTF-8

#setup sources
sudo apt update && sudo apt install -y curl gnupg2 lsb-release 
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64,arm64] http://packages.ros.org/ros2/ubuntu `lsb_release -cs` main" > /etc/apt/sources.list.d/ros2-latest.list'

#Install ros2 packages
sudo apt update -y
sudo apt install ros-eloquent-desktop -y

#Environment Setup
echo -e '\nsource /opt/ros/eloquent/setup.bash' >> ~/.bashrc

#Install Colcon
sudo apt install python3-colcon-common-extensions -y
