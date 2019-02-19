# ROS Workshop Course Outline

# Week 1

## [Presentation Notes](https://github.com/ros-workshop/ros-introduction)
**Outline:**
+ Filesystem Architecture
+ Computational Graph
+ Community
+ References

## [Beginners Tutorials](http://wiki.ros.org/ROS/Tutorials)

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

## [Intermediate Tutorials](http://wiki.ros.org/ROS/Tutorials)
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

# Week 2

### Catkin workspace setup

* For this week, we'll build a single Catkin workspace called ```workshop_ws``` from scratch. Each day will build on the previous, so make sure you end each day with a working solution! 

<details><summary>Try figure this out yourself first, otherwise, click here to for a hint!</summary>
  
```sh
mkdir -p ~/workshop_ws/src  # Creates a workspace directory names workshop_ws.
cd ~/workshop_ws/src
catkin_init_workspace  # Initialises the workspace
```

</details>

### Git clone each daily topic

* For each daily topic, clone the repository linked below into the
`src/` directory of the workspace `workshop_ws`. 

<details><summary>Try figure this out yourself first, otherwise, click here to for a hint!</summary>

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


