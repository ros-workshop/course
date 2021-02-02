# Installing Ubuntu

There are many ways to run Ubuntu and ROS on your own computer, each with their own benefits and disadvantages:

| Method        | Benefits | Disadvantages |
| ------------- | ------------- | ---------- |
| Wipe & Install | Native performance  | Erases all data           |
| Dual Boot  | Native performance, can co-exist with Windows  | Dangerous: can erase your laptop   |
| Bootable "Live" USB  | Native performance, doesn't alter Windows partitions | Slower disk I/O, risk of USB being bumped/corrupted   |
| Virtual Machine   | Very easy to install | Much slower, may not handle Gazebo simulations, requires >4 GB of RAM |

### 18.04/Melodic ISO Disk Image
A 3 GB ISO disk image containing Ubuntu 18.04 and ROS Melodic Desktop can be [found here](https://drive.google.com/drive/folders/1qnYpG7GZATu9GLbctysO56Sh4IkWvczT). Ask a mentor for a copy of this file to avoid the 3 GB download. 

Below are some rough guidelines for the various installation methods:

## Virtual Machine

Below is a guide to installing VirtualBox. There are other VM packages, such as Parallels and VMware, that offer better support for 3D graphics, however many require payment for commercial use.

VirtualBox: Works with Windows, Linux and Mac

<details><summary>Installation:</summary>

Steps:
1. Download and install the VirtualBox 6.1.2 for your relevant platform from https://www.virtualbox.org/wiki/Downloads
2. Install the extension to enable USB and other functionalities from https://download.virtualbox.org/virtualbox/6.1.2/Oracle_VM_VirtualBox_Extension_Pack-6.1.2.vbox-extpack
3. In step 2, it will open up VirtualBox and ask permission to continue the installation. And continue to do so.
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

Vmware Player: Works with Windows and Linux

<details><summary>Installation guide</summary>
  
Steps:  
1. Download from https://www.vmware.com/au/products/workstation-player.html
2. Follow: https://www.linuxlookup.com/howto/install_vmware_workstation_or_vmware_player_bundle_file
    -For both you do not need to need to enter a license, just select free education version.
 
</details>


## Bootable "Live" USB

An empty memory stick (>16 GB, USB 3.0) is required:

Set Up Bootable USB
<details><summary>Installation guide</summary>
  
Steps:  
1.    Download the 18.04/Melodic ISO disk image linked above
2.    Plug USB 3.0 into your device
3.    Create the bootable disk
      - Windows - Utility program DiskPart
      - Ubuntu – Startup Disk Creator
      - Mac – Disk Creator
4.    Plug USB into device you wish to live boot
5.    Follow these instructions to live boot -> https://www.acronis.com/en-au/articles/usb-boot/

</details>

## Dual-boot

***WARNING*** 
Make sure you have a current backup of your computer before attempting any dual-boot installations as it is very easy to accidentally damage or delete all data on your laptop. And a reminder "Format" means to totally erase a disk.

<details><summary>Installation guide</summary>
  
Steps:  
-  Installation will vary depending on your intended device.
-  It is recommended to research thoroughly before attempting a dualboot setup.
  
</details>

# Installing ROS Melodic

Once Ubuntu is installed. Follow the instructions to install "Desktop-Full Install" [on the ROS Wiki here](http://wiki.ros.org/melodic/Installation/Ubuntu):

# Install Catkin Tools

Also install Catkin Tools. Follow the apt install instructions in the [catkin tools docs](https://catkin-tools.readthedocs.io/en/latest/installing.html)
