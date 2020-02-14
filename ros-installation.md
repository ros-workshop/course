# Installing Ubuntu

For best performance during this course Ubuntu should be installed on the internal HDD/SSD. Often the best way is by dual-booting the device. 

***WARNING*** Backups of your computer should be completed before attempting any dual-boot installations as it is very easy to accidentally damage or delete all data on your laptop. 

Virtual Machine installations may not be able to handle processing simulations of the robots during the week.

Live USB will require a formatted (data removed) USB3.0 and minimum 16GB storage. 

An ISO containing Ubuntu 18.04 and ROS Melodic Desktop-full can be found:
https://drive.google.com/drive/folders/1qnYpG7GZATu9GLbctysO56Sh4IkWvczT?usp=sharing

Below are some suggestioned guides for installing.

## Virtual Machine

Below is a guide to installing VirtualBox. There are other softare packages, including Parallels and VMware that offer better support for graphics integration, however most of them are paid.

VirtualBox - Works with Windows, Linux and Mac
<details><summary>Installation guide</summary>
  
  Further details check:  https://www.virtualbox.org/manual/UserManual.html#gui-createvm

1. Download and install the VirtualBox 6.1.2 for your relevant platform from https://www.virtualbox.org/wiki/Downloads
2. Install the extension to enable USB and other functionalities from https://download.virtualbox.org/virtualbox/6.1.2/Oracle_VM_VirtualBox_Extension_Pack-6.1.2.vbox-extpack
3. In step 2, it will open up VirtualBox and ask permission to continue the installation. And continue to do so.
4. In VirtualBox, create a new VM for Ubuntu.
5. Choose the guest OS architecture: (Eg: 64bit, Ubuntu)
6. Next, select the amount of RAM (1/2 of what you have now). (If RAM is 4GB physically, I would suggest installing Ubuntu natively). 
7. Next, specify a virtual hard drive with a dynamically allocated one with at least 20GB.
8. Now, run your VM.
9. On the first run, select the downloaded custom ubuntu ISO via First Start Wizard.
10. This will present you with the wizard to try or install Ubuntu in your VM. Select what you prefer.
11. Continue as you would normally install Ubuntu and let it use the entire virtual disk to install Ubuntu.
12. Once, completed reboot to unmount the ISO from VM and start learning ROS.
</details>


Vmware Player - Works with Windows and Linux
<details><summary>Installation guide</summary>
  
  1. Download from  https://www.vmware.com/au/products/workstation-player.html
  For Linux
  2. Follow: https://www.linuxlookup.com/howto/install_vmware_workstation_or_vmware_player_bundle_file
  For both you do not need to need to enter a license, just select free education version.
 
</details>


## Live USB

Set Up Bootable USB
<details><summary>Installation guide</summary>
1.    Download the Bionic ISO image with Melodic desktop full installed here -> https://drive.google.com/drive/folders/1qnYpG7GZATu9GLbctysO56Sh4IkWvczT?usp=sharing
  
2.    Plug USB 3.0 into your device

3.    Create the bootable disk
      Windows - Utility program DiskPart
      Ubuntu – Startup Disk Creator
      Mac – Disk Creator
        
4.    Plug USB into device you wish to live boot

5.    Follow these instructions to live boot -> https://www.acronis.com/en-au/articles/usb-boot/


</details>

## Dual-boot

***Second WARNING*** 
Backups of your computer should be completed before attempting any dual-boot installations as it is very easy to accidentally damage or delete all data on your laptop. And a reminder "Format" means to totally erase a disk.

<details><summary>Installation guide</summary>
  Installation will vary depending on your intended device.
  It is recommended to research thoroughly before attempting a dualboot setup.
</details>

# Installing ROS Melodic

Once Ubuntu is installed.
Follow the instructions to install "Desktop-Full Install" [on the ROS Wiki here](http://wiki.ros.org/melodic/Installation/Ubuntu):



ros-installation.md
