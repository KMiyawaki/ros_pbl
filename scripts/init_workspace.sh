#!/bin/bash
TARGET_ROS=${ROS_DISTRO}
echo "**Making workspace. Target ros-${TARGET_ROS}**"
CRNT_WD=`pwd`
if ! grep -q /opt/ros/${TARGET_ROS}/setup.bash ~/.bashrc; then
  echo "source /opt/ros/${TARGET_ROS}/setup.bash" >> ~/.bashrc
  source ~/.bashrc
fi
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/src/
catkin_init_workspace
cd ..
catkin_make
cd
if ! grep -q /catkin_ws/devel/setup.bash ~/.bashrc; then
  echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc
  source ~/.bashrc
fi
cd ${CRNT_WD}
