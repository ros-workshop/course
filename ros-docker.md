# Docker image with ROS Noetic and NVIDIA Container Toolkit 

### Note: Requires a NVIDIA GPU

NVIDIA provides the `nvidia/cudagl:11.4.2-base-ubuntu20.04` image here
which "...extends the CUDA images by adding support for OpenGL through libglvnd. These images are provided for use as a base layer upon which to build your own GPU-accelerated application container image."

This Dockerfile adds ROS Noetic Desktop to NVIDIA's image, i.e. it combines `nvidia/cudagl:11.4.2-base-ubuntu20.04` and `osrf/ros:noetic-desktop-full`

### Based on: 

- https://hub.docker.com/r/nvidia/cudagl
- https://gitlab.com/nvidia/container-images/cudagl
- https://github.com/osrf/docker_images/blob/master/ros/noetic/ubuntu/focal/ros-core/Dockerfile 
- https://roboticseabass.com/2021/04/21/docker-and-ros

# Instructions

## Build the `nvidia_ros` image from Dockerfile

```
cd 'your favourite dev folder'
git clone git@github.com:ros-workshop/course.git
cd course
docker build -t nvidia_ros .
```

## Start a `nvidia_ros` container with `workshop_ws` mounted

```
cd 'your favourite dev folder'
mkdir workshop_ws

docker run -it --net=host --gpus all \
    --env="DISPLAY" \
    --env="NVIDIA_DRIVER_CAPABILITIES=all" \
    --env="QT_X11_NO_MITSHM=1" \
    --volume="$HOME/.Xauthority:/root/.Xauthority:rw" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    --volume="${PWD}/workshop_ws":"/workshop_ws":rw \
    nvidia_ros \
    bash
```

This should drop you into a new Docker container instance, e.g.: 

```
root@hostname:/workshop_ws# 
```

## Test the new container

Inside the Docker container, check NVIDIA device is mapped in, e.g.:

```
nvidia-smi

Wed Feb  9 10:37:39 2022       
+-----------------------------------------------------------------------------+
| NVIDIA-SMI 510.47.03    Driver Version: 510.47.03    CUDA Version: 11.6     |
|-------------------------------+----------------------+----------------------+
...
```

Test the ROS GUI based tools
```
rqt
gazebo
roscore & rviz
```

## Get the name/ID of your new container

In a separate terminal on the host, list the running containers and remember the name/ID of your new container, e.g.:

```
docker ps
CONTAINER ID   IMAGE        COMMAND   CREATED          STATUS          PORTS     NAMES
aca9d38aafce   nvidia_ros   "bash"    2 minutes ago   Up 2 minutes             nice_maxwell
```

## Open another terminal in the running container

For the example above:

```
docker exec -it aca9d38aafce bash
```
