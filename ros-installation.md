# Installing Ubuntu & ROS

## Installing Ubuntu

There are many ways to run Ubuntu and ROS on your own computer, each with their own benefits and disadvantages:

| Method        | ✅ Benefits  | ❌ Disadvantages |
| ------------- | ------------- | ---------- |
| 1. Ubuntu Live USB Stick  | ✅ Native performance, doesn't alter Windows partitions | ❌ Slower disk I/O, risk of USB being bumped and corrupted   |
| 2. Wipe & Install | ✅ Native performance  | ❌ Erases all data           |
| 3. Windows Dual Boot  | ✅ Native performance, can co-exist with Windows  | ❌ Installation error could wipe your laptop  |
| 4. Virtual Machine   | ✅ Easy to install | ❌ Much slower, may not handle 3D graphics or Gazebo simulations, requires more than 4 GB of RAM |
| 5. Docker   | ✅ Native performance, can run on any Linux host, e.g. Ubuntu 21.10 | ❌ Complicated to set up |

Below are some rough guidelines for the various installation methods:


### 1. Ubuntu Live USB Stick

An empty USB memory stick (>16 GB, USB 3.0) is required. There are plenty of tutorials on the Internet e.g. the official Ubuntu tutorial [here](https://ubuntu.com/tutorials/create-a-usb-stick-on-ubuntu). A nice alternative is [Ventoy](https://www.ventoy.net/en/index.html), which allows you to boot from any ISO copied to the USB memory stick. 


### 2. Wipe & Install	

Follow the instructions above to create a Ubuntu Live USB Stick. Boot from the USB stick, select install and choose _"wipe"_ during the installation. 


### 3. Windows Dual Boot

***WARNING*** Make sure you have a backup of your computer before attempting any dual-boot installations as it is very easy to accidentally damage or delete all data on your laptop. 

There are plenty of tutorials on the internet, e.g. [here](https://medium.com/linuxforeveryone/how-to-install-ubuntu-20-04-and-dual-boot-alongside-windows-10-323a85271a73).  

Summary: Boot from an Ubuntu Live USB Stick, select install and choose _"Install Ubuntu alongside Windows Boot Manager”_. 


### 4. Virtual Machine

There are many Virtual Machines solutions, such as [VirtualBox](https://www.virtualbox.org/), [VMWare Player](https://www.vmware.com/au/products/workstation-player.html) and [Parallels](https://www.parallels.com/) etc. Make sure you select a VM solution that allows GPU passthrough. VMWare Player allows GPU passthrough and is free for non-commercial use.

<details><summary>VirtualBox Installation</summary>

Steps for installing Virtual Box 6.1.32 (as of Jan 2022):
1. Download and install VirtualBox for your relevant platform from https://www.virtualbox.org/wiki/Downloads
2. Install the extension to enable USB and other functionalities from https://download.virtualbox.org/virtualbox/6.1.32/Oracle_VM_VirtualBox_Extension_Pack-6.1.32.vbox-extpack
3. In Step 2, it will open up VirtualBox and ask permission to continue the installation. Continue to do so.
4. In VirtualBox, create a new VM for Ubuntu.
5. Choose the guest OS architecture: (64-bit, Ubuntu)
6. Select the amount of RAM (typically 50% of physical RAM)
7. Next, specify a virtual hard drive with a dynamically allocated one with at least 20GB.
8. Now, run your VM.
9. On the first run, select the Ubuntu ISO via First Start Wizard.
10. This will present you with the wizard to try or install Ubuntu in your VM. Select install.
11. Continue as you would normally to install Ubuntu, allowing it use the entire virtual disk
12. Once completed unmount the ISO and reboot
Further [details](https://www.virtualbox.org/manual/UserManual.html#gui-createvm)

</details>

<details><summary>VMWare Player Installation</summary>
  
Steps:  
1. Download from https://www.vmware.com/au/products/workstation-player.html
2. Follow: https://www.linuxlookup.com/howto/install_vmware_workstation_or_vmware_player_bundle_file
   
</details>


### 5. Docker

Docker provides containerisation that allows different versions of Linux to run on a host with native performance. To run GUI programs such as `rviz` and `rqt`, the host's X.org server needs to be exposed to running Docker container. See [here](./ros-docker-on-linux.md) for instructions on building a Docker image with ROS Noetic and NVIDIA Container Toolkit. Note these instructions are for Docker on a Linux host. 

## Installing ROS

Once you have Ubuntu installed, follow the instructions for "Desktop - Full Install" on the ROS Wiki [here](http://wiki.ros.org/noetic/Installation/Ubuntu). Once you've installed ROS, you should install Catkin tools with `sudo apt-get install python3-catkin-tools`.
