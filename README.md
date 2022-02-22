# Course

## Course Prerequisites

To complete this workshop please arrive with:
* A basic understanding of Ubuntu Linux
* A basic understanding of Python and C++
* A laptop running either:
  * [Ubuntu 18.04](https://releases.ubuntu.com/18.04) and [ROS Melodic](http://wiki.ros.org/melodic) or 
  * [Ubuntu 20.04](https://releases.ubuntu.com/20.04) and [ROS Noetic](http://wiki.ros.org/noetic)
* Please follow the [installation instructions here](./ros-installation.md)
  * Ask a mentor if you get stuck, and we'll be happy to help
* Access to the Internet (you'll need to download 1-2 GB)
  * Ask a mentor for Wi-Fi access details
* Access to this GitHub repository (consider [adding a SSH key][gh-ssh-keys])
 
**Note**: While any development environment can be used for this course, for beginners we recommend the free [VSCode](https://code.visualstudio.com/) source code editor.

## Contributions

This course material has been developed in our spare time. 
As you work through the workshop, please consider contributing any suggestions or edits back -- it's easy! 
Please fork the repository you want to update and do a “pull request“ (PR) when you're ready for us to review. For the full process, read up on “Git Flow” [here][gh-git-flow].

## Part 1: ROS Basics

### Review the [Presentation Notes](./ros-introduction.md)
Topics:
+ Filesystem Architecture
+ Computational Graph
+ Community
+ References

### Complete the [ROS Beginners Tutorials][ros-tutorials]
Topics:
+ Directory structures for Catkin workspaces 
+ Creating packages
+ Nodes and topics
+ Bag files
+ Viewing `rqt_graph`
+ About `tf` and `tf trees`
+ Parameters and services
+ Writing a publisher and subscriber nodes
+ Publishing and subscribing in the same node
+ Using `rviz`
+ Using `roslaunch` 

### Complete the [ROS Intermediate Tutorials][ros-tutorials]
Topics:
+ Creating a new package by hand
+ Managing dependencies
+ Running ROS across multiple machines
+ Writing launch files for large projects
+ Creating a URDF
+ Visualising a robot in `rviz`
+ Visualising a robot in Gazebo

### Self Check
Make sure you can answer these questions before proceeding:
1. What's a `node` and a `topic`? 
2. Have you recorded a bag file, and what does the `rosbag play --clock` parameter do?
3. Have you used `rqt_graph` to check what topics a node is subscribed to?
4. Do you know what a URDF is?
5. What's the "tf tree" and have you used `rqt_tf_tree` for introspection? 
6. How would you check how many messages a node is sending per second?
7. How to create custom messages using ROS message description language?
8. How to add external packages' nodes in a launch file?
9. How to edit your package's `CMakeLists.txt` file to add the source of ROS nodes, messages, services, etc. for compilation? 
10. How do you remap a topic name when starting a node in a lanch file?
11. What is an workspace "overlay" in Catkin?
12. What is the difference between a ROS package and a Debian (Ubuntu) package?

<details><summary>Click for answers!</summary>

1. A node is an executable that uses ROS to communicate with other nodes. Nodes can publish messages to a topic as well as subscribe to a topic to receive messages
2. If you are playing back a bag file with `rosbag play`, using the `--clock` option will run a Clock Server while the bag file is being played
3. Well, have you?
4. The Unified Robot Description Format (URDF) is an XML specification to describe a robot. URDF is an XML format that describes a robot, its parts, joints, dimensions and properties
5. tf is a package that lets the user keep track of multiple coordinate frames over time. tf maintains the relationship between coordinate frames in a tree structure buffered in time, and lets the user transform points, vectors, etc between any two coordinate frames at any desired point in time
6. `rostopic hz [topic]`
7. Simply place a `.msg` file inside the msg directory in a package. More information found [here][ros-custom-msg]
8. `include file="$(find ros_package_name)/path_to_launch.launch"`
9. Information can be found [here][ros-cmakelists]
10. The remap tag allows you to pass in name remapping arguments to the ROS node that you are launching in a more structured manner than setting the args attribute of a node directly. The remap tag applies to all subsequent declarations in its scope (launch, node or group)
11. Overlaying refers to building and using a ROS package from source on top of an existing version of that same package. In this way your new or modified version of the package "overlays" the installed one
12. * *ROS Package:* A ROS package might contain ROS nodes, a ROS library, datasets, configuration files, third-party software, or anything else that logically constitutes a useful module. The goal of a ROS package is to provide functionality in an easy-to-consume manner that is reusable. In general, ROS packages follow a "Goldilocks" principle: enough functionality to be useful, but not too much that the package is heavyweight and difficult to use from other software. 
    * *Debian Package:* A Debian/Ubuntu package is a `.deb` file that allows for applications or libraries to be distributed via the `apt` package management system. Packaging allows automated installation, upgrading, configuring, and removing computer programs for Debian/Ubuntu in a consistent manner. One or more Debian packages can be built from a single source package. A single Debian package can contain multiple ROS packages. Debian Policy requires that each `.deb` file is built with a particular structure and format but there are many methods of arriving at these files.
</details>

### Tips 
* Whenever you open a new terminal window remember to run `source devel/setup.bash` from the `workspace/src` directory
* After you have changed a file within a package you need to run `catkin build` from the `workspace/src` directory
* Often packages cannot be installed with `sudo apt-get install` as they might not have a `rosdep` key! If this is the case, clone the package manually and build within your workspace
* If `rosrun` does not find your package, use `--force-discover`

## Part 2: ROS Application Areas

The second part of this workshop consists of four application areas that are worked on over four days. The workshop material is cloned from these repositories:
* **Monday**: [Sensor Integration and URDFs][01-sensor-integration]
* **Tuesday**: [SLAM & Navigation][02-slam-navigation]
* **Wednesday**: [Perception][03-perception]
* **Thursday**: [Manipulation][04-manipulation]

The fifth day (Friday) integrates these application areas to build a simulated robot that can navigate its environment, finding and picking up cubes:
* **Friday**: [Mobility Plus Manipulation][05-mobility-plus-manipulation]

#### Workspace Setup

Across these five days, you will incrementally build a `catkin` workspace called ```workshop_ws```. Each day will build on the previous, so make sure you end each day with a working solution! 

<details><summary>Try to figure out how to create a `catkin` workspace yourself, otherwise, click here to for answer!</summary>
  
```sh
mkdir -p ~/workshop_ws/src  # Creates a workspace directory named workshop_ws.
cd ~/workshop_ws/src
```

</details>

#### Git Clone

For each day, clone the repository linked below into the
`src/` directory of the workspace `workshop_ws`. 

<details><summary>Try to figure this out yourself first, otherwise, click here to for answer!</summary>

E.g. for the [sensor-integration][01-sensor-integration] repository, you'd type:

```sh
cd ~/workshop_ws/src
git clone https://github.com/ros-workshop/sensor-integration.git
```
Or if you are using SSH keys:
```
cd ~/workshop_ws/src
git clone git@github.com:ros-workshop/sensor-integration.git
```

</details>

#### Catkin Build

Build and then source the workspace. 

<details><summary>Try to figure this out yourself first, otherwise, click here to for answer!</summary>

+ **Note**: If this command fails, install catkin tools following the instructions [here][catkin-tools].

+ **Tip**: Source any workspaces you want to extend before running `catkin build`.


```sh
cd ~/workshop_ws
catkin build
source devel/setup.bash
```
</details>


### Monday: [Sensor Integration and URDFs][01-sensor-integration]
**Topics**:
+ Creating a URDF
+ Visualising your robot
+ Fixing a broken URDF
+ Adding a sensor to a robot
+ Controlling a simulated robot
+ Detecting an obstacle and stopping the robot

### Tuesday: [SLAM & Navigation][02-slam-navigation]
**Topics**:
+ Creating a map using a lidar
+ Simultaneous Localisation and Mapping (SLAM)
+ Using move_base for navigation
+ Finding an object by navigating around a map

### Wednesday: [Perception][03-perception]
**Topics**:
+ Using a camera to detect Apriltags
+ Using a real camera with ROS
+ Camera calibration
+ Fusing lidar and camera/DNN data for person detection and localisation

### Thursday: [Manipulation][04-manipulation]
**Topics**:
+ Creating a Moveit configuration package
+ Moving Your robot in `rviz`
+ Using the Moveit class in a node
+ Creating a OctoMap using a depth camera

### Friday: [Mobility Plus Manipulation][05-mobility-plus-manipulation]
**Topics**:
+ How to integrate multiple ROS nodes together 
+ How to create a robot in a Gazebo world that finds and picks up as many cubes as it can

[01-sensor-integration]: https://github.com/ros-workshop/sensor-integration
[02-slam-navigation]: https://github.com/ros-workshop/slam-navigation
[03-perception]: https://github.com/ros-workshop/perception
[04-manipulation]: https://github.com/ros-workshop/manipulation
[05-mobility-plus-manipulation]: https://github.com/ros-workshop/mobility-plus-manipulation

[catkin-tools]: https://catkin-tools.readthedocs.io/en/latest/installing.html
[gh-git-flow]: https://guides.github.com/introduction/flow
[gh-ssh-keys]: https://help.github.com/articles/connecting-to-github-with-ssh/

[ros-cmakelists]: http://wiki.ros.org/catkin/CMakeLists.txt
[ros-custom-msg]: http://wiki.ros.org/ROS/Tutorials/DefiningCustomMessages
[ros-tutorials]: http://wiki.ros.org/ROS/Tutorials
