# ROS Noetic on Ubuntu for Windows using WSL2 

### Note: Requires Windows, WSL2 and VcXsrv Windows X Server.

### Install WSL2 and Ubuntu
Follow the instructions given [here](https://ubuntu.com/tutorials/install-ubuntu-on-wsl2-on-windows-10#1-overview).  
You only need to complete up to (and including) **Step 4 - Configure Ubuntu**.

## Install ROS Noetic
Once you have Ubuntu installed, open an Ubuntu terminal and follow the instructions for "Desktop - Full Install" on the ROS Wiki [here](http://wiki.ros.org/noetic/Installation/Ubuntu). Once you've 
installed ROS, you should install Catkin tools with `sudo apt-get install python3-catkin-tools`.

## Install VcXsrv Windows X Server
Ubuntu running on WSL2 cannot not natively show GUIs on your display, a good approach is getting Ubuntu to talk to Windows X display.     

Download VcXrv (Any X Server for windows will work, if you have one you prefer) from [here](https://sourceforge.net/projects/vcxsrv/).
Follow the instructions outlined on this [blog](https://jack-kawell.com/2019/09/11/setting-up-ros-in-windows-through-docker/), in the **Setup GUI Forwarding** section, to correctly 
install and configure VcXsrv and your ~/.bashrc so Ubuntu GUIs display.

If you ever run into issues with ROS GUIs not displaying, it's most likely an X server issue, so check VcXsrv is running and setup correctly. If your IPv4 Address changes, 
you MUST update your ~/.bashrc to reflect this change or nothing will display.
