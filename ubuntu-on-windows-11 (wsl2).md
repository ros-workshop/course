# ROS Noetic on Ubuntu for Windows 11 using WSL2 

### Note: Requires Windows 11, WSL2, WSLg and GPU Drivers

### Install WSL2 and Ubuntu
Follow the instructions given [here](https://ubuntu.com/tutorials/install-ubuntu-on-wsl2-on-windows-10#1-overview).  
You only need to complete up to (and including) **Step 4 - Configure Ubuntu**.

## Install ROS Noetic
Once you have Ubuntu installed, open an Ubuntu terminal and follow the instructions for "Desktop - Full Install" on the ROS Wiki [here](http://wiki.ros.org/noetic/Installation/Ubuntu). Once you've 
installed ROS, you should install Catkin tools with `sudo apt-get install python3-catkin-tools`.

## Enable WSLg and Install GPU Drivers
Ubuntu running on WSL2 cannot not natively show GUIs on your display. However, windows provides an integrated solution with WSLg.

If your machine is running Windows 11, WSLg should already be installed and enabled. All you need to do is download the correct driver for your GPU. At the time of writing this, if you are running Windows 10 you will need to upgrade to Windows 11 (I have not tested on Windows 10).

Follow the instructions [here](https://github.com/microsoft/wslg) for further guidance and links to the appropriate drivers.
