# ROS Workshop 2020

<details><summary> Refresher </summary>
  
## View the [ROS introduction](https://github.com/ros-workshop/ros-introduction)

To complete the material please arrive with:
* A basic understanding of ROS
* A laptop running Ubuntu 18.04 and ROS Melodic **please be sure to install the correct version
* View the Presentation Notes
* Spend some time to attempt the ROS Tutorials below.
* Access to the Internet (you'll need to download ~1 GB)
* Access to this Github (consider [adding a SSH key](https://help.github.com/articles/connecting-to-github-with-ssh/))
* Access to our Slack channel ([click here](https://ros-workshop-perth.slack.com), request access)


Please follow the [prerequists](https://github.com/ros-workshop/Prerequisites.md) to install Ubuntu 18.04 and ROS Melodic.

View the Presentation Notes
Spend some time to attempt the ROS Tutorials below.

**Outline:**
+ Filesystem Architecture
+ Computational Graph
+ Community
+ References

## Complete the [Beginners ROS Tutorials](http://wiki.ros.org/ROS/Tutorials)

**Concepts:**
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

## Review the [Intermediate ROS Tutorials](http://wiki.ros.org/ROS/Tutorials)

**Topics:**
+ Creating a Package by Hand
+ Managing Dependencies
+ Running ROS Across Multiple Machines
+ Launch Files for Large Projects

<details><summary>Additional Learning</summary>

+ Create a URDF
+ Visualise a Robot in Rviz
+ Visualise a Robot in Gazebo
</details>

## Knowledge Check
Can you answer the following questions:
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
3. Well, have you?
4. The Unified Robot Description Format (URDF) is an XML specification to describe a robot. URDF is an XML format that describes a robot, its parts, joints, dimensions and properties
5. tf is a package that lets the user keep track of multiple coordinate frames over time. tf maintains the relationship between coordinate frames in a tree structure buffered in time, and lets the user transform points, vectors, etc between any two coordinate frames at any desired point in time
6. rostopic hz [topic]
7. Simply place a .msg file inside the msg directory in a package. More information found here (http://wiki.ros.org/ROS/Tutorials/DefiningCustomMessages)
8. include file="$(find ros_package_name)/path_to_launch.launch"
9. Information can be found here (http://wiki.ros.org/catkin/CMakeLists.txt)
10. The remap tag allows you to pass in name remapping arguments to the ROS node that you are launching in a more structured manner than setting the args attribute of a node directly. The remap tag applies to all subsequent declarations in its scope (launch, node or group)
11. Overlaying refers to building and using a ROS package from source on top of an existing version of that same package. In this way your new or modified version of the package "overlays" the installed one
1. * *ROS Package:* A ROS package might contain ROS nodes, a ROS library, datasets, configuration files, third-party software, or anything else that logically constitutes a useful module. The goal of a ROS package is to provide functionality in an easy-to-consume manner that is reusable. In general, ROS packages follow a "Goldilocks" principle: enough functionality to be useful, but not too much that the package is heavyweight and difficult to use from other software. 
   * *Debian Package:* A Debian/Ubuntu package is a `.deb` file that allows for applications or libraries to be distributed via the `apt` package management system. Packaging allows automated installation, upgrading, configuring, and removing computer programs for Debian/Ubuntu in a consistent manner. One or more Debian packages can be built from a single source package. A single Debian package can contain multiple ROS packages. Debian Policy requires that each `.deb` file is built with a particular structure and format but there are many methods of arriving at these files.
</details>

</details>

# Materials for this workshop

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

## Wednesday: [Perception](https://github.com/ros-workshop/perception.git)
**What you will learn about:**
+ Using an Camera to Detect Apriltags
+ Using a Real Camera with ROS

<details><summary>Additional Learning</summary>

+ Camera Calibration
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


