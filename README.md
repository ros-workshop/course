# ROS Workshop Course Outline

# Week 1

## View the [Presentation Notes](https://github.com/ros-workshop/ros-introduction)
**Outline:**
+ Filesystem Architecture
+ Computational Graph
+ Community
+ References

## Complete the [Beginners ROS Tutorials](http://wiki.ros.org/ROS/Tutorials)

Make sure you install ROS version Kinetic and Ubuntu version 16!

**What you will learn about:**
+ ROS File System
+ Creating a Package
+ Nodes and Topics
+ Bag Files
+ rqt_graph
+ tf and tf Trees
+ Parameters and Services
+ Writing a Publisher and Subscriber Node
+ roslaunch

<details><summary>Additional Learning</summary>

+ rqt_publisher
+ rqt_robot_steering
+ Rviz
+ Publish and Subscribe in the Same Node

</details>

## Complete the [Intermediate ROS Tutorials](http://wiki.ros.org/ROS/Tutorials)
**What you will learn about:**
+ Creating a Package by Hand
+ Managing Dependencies
+ Running ROS Across Multiple Machines
+ Launch Files for Large Projects

<details><summary>Additional Learning</summary>

+ Create a URDF
+ Visualise a Robot in Rviz
+ Visualise a Robot in Gazebo
</details>

## Quick Check
At the end of the first week you should be able to answer these questions:
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
2. If you are playing back a bag file with rosbag play, using the --clock option will run a Clock Server while the bag file is being played
4. The Unified Robot Description Format (URDF) is an XML specification to describe a robot. URDF is an XML format that describes a robot, its parts, joints, dimensions and properties
5. tf is a package that lets the user keep track of multiple coordinate frames over time. tf maintains the relationship between coordinate frames in a tree structure buffered in time, and lets the user transform points, vectors, etc between any two coordinate frames at any desired point in time
6. rostopic hz [topic]
7. Simply place a .msg file inside the msg directory in a package. More information found here (http://wiki.ros.org/ROS/Tutorials/DefiningCustomMessages)
8. <include file="$(find ros_package_name)/path_to_launch.launch" />
9. Information can be found here (http://wiki.ros.org/catkin/CMakeLists.txt)
10. The <remap> tag allows you to pass in name remapping arguments to the ROS node that you are launching in a more structured manner than setting the args attribute of a <node> directly. The <remap> tag applies to all subsequent declarations in its scope (<launch>, <node> or <group>)
11. Overlaying refers to building and using a ROS package from source on top of an existing version of that same package. In this way your new or modified version of the package "overlays" the installed one
12. Software in ROS is organized in packages. A package might contain ROS nodes, a ROS-independent library, a dataset, configuration files, a third-party piece of software, or anything else that logically constitutes a useful module. The goal of these packages it to provide this useful functionality in an easy-to-consume manner so that software can be easily reused. In general, ROS packages follow a "Goldilocks" principle: enough functionality to be useful, but not too much that the package is heavyweight and difficult to use from other software. A Debian package is a collection of files that allow for applications or libraries to be distributed via the Debian package management system. The aim of packaging is to allow the automation of installing, upgrading, configuring, and removing computer programs for Debian in a consistent manner. A Debian package consists of one source package component and one or more binary package components. Debian Policy requires that these package files are built with a particular structure and format but there are many methods of arriving at these files
</details>

## Tips for the Advanced Tutorials
Rememeber these tips for the upcoming advanced tutorials!
* Every you open a new terminal window remember to run source devel/setup.bash from the workspace/src directory
* After you have changed a file within a package you need to run a catkin_make from the workspace/src directory
* Not all packages can be installed with sudo apt-get install as they might not have a rosdep key! If this is the case, clone the package manually and build within your workspace
* --force-discover can be used if rosrun does not find your package

# Week 2

### Prerequisites

Make sure you arrive with:
* A good understanding of ROS basics (see Week 1 above)
* A laptop running Ubuntu and ROS Kinetic
* Access to the Internet (you'll need to download ~1 GB)
* Access to this Github (consider [adding a SSH key](https://help.github.com/articles/connecting-to-github-with-ssh/))
* Access to our Slack channel ([click here](https://ros-workshop-perth.slack.com), request access)

### Catkin workspace setup

* For this week, we'll build a single Catkin workspace called ```workshop_ws``` from scratch. Each day will build on the previous, so make sure you end each day with a working solution! 

<details><summary>Try figure this out yourself first, otherwise, click here to for answer!</summary>
  
```sh
mkdir -p ~/workshop_ws/src  # Creates a workspace directory names workshop_ws.
cd ~/workshop_ws/src
catkin_init_workspace  # Initialises the workspace
```

</details>

### Git clone each daily topic

* For each daily topic, clone the repository linked below into the
`src/` directory of the workspace `workshop_ws`. 

<details><summary>Try figure this out yourself first, otherwise, click here to for answer!</summary>

E.g. for the [sensor-integration](https://github.com/ros-workshop/sensor-integration.git) repository, you'd type:

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



## Monday: [Sensor Integration and URDFs](https://github.com/ros-workshop/sensor-integration.git)
**What you will learn about:**
+ Creating a URDF
+ Visualising Your Robot
+ Fixing a Broken URDF
+ Adding Sensor to a Robot
+ Controlling a simulated robot

<details><summary>Additional Learning</summary>

+ Detecting an obstacle and stopping the robot

</details>

## Tuesday: [SLAM & Navigation](https://github.com/ros-workshop/slam-navigation)
**What you will learn about:**
+ Creating a Map Using a Lidar
+ Simultaneous Localisation and Mapping (SLAM)
+ Using move_base for navigation

<details><summary>Additional Learning</summary>

+ Find a Object by Navigating Around a Map

</details>

## Wednesday: [Computer Vision](https://github.com/ros-workshop/perception.git)
**What you will learn about:**
+ Using an Camera to Detect Apriltags
+ Using a Real Camera with ROS

<details><summary>Additional Learning</summary>

+ Fuse and Lidar and Camera/DNN data for Person Detection and localisation

</details>

## Thursday: [Manipulation](https://github.com/ros-workshop/manipulation.git)
**What you will learn about:**
+ Creating a Moveit Configuration Package
+ Moving Your Robot in Rviz
+ Using the Moveit Class in a Node

<details><summary>Additional Learning</summary>

+ Create a OctoMap Using a Depth Camera
</details>

## Friday: [Mobility Plus Manipulation](https://github.com/ros-workshop/mobility-plus-manipulation)
**Task:**

Navigate in a Gazebo World to Find an Collect as Many Objects as You Can

"Mobility plus manipulation" describes a mobile robot that alternates between navigating its environment and manipulating objects (not to be confused with "mobile manipulation" where navigation and manipulation are performed at the same time).


