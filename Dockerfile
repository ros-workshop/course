# Docker image with ROS Noetic and NVIDIA Container Toolkit 
# Based on https://github.com/osrf/docker_images/blob/master/ros/noetic/ubuntu/focal/ros-core/Dockerfile
# and https://roboticseabass.com/2021/04/21/docker-and-ros/

# From https://hub.docker.com/r/nvidia/cudagl
# CUDA GL, extends the CUDA images by adding support for OpenGL through libglvnd. 
# These images are provided for use as a base layer upon which to build your own
# GPU-accelerated application container image.
FROM nvidia/cudagl:11.4.2-base-ubuntu20.04

# Setup environment
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8
ENV ROS_DISTRO noetic

# Minimal setup
RUN apt-get update \
 && apt-get install -y locales lsb-release
ARG DEBIAN_FRONTEND=noninteractive
RUN dpkg-reconfigure locales

# Install ROS Noetic Desktop
RUN sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
RUN apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
RUN apt-get update && apt-get install --no-install-recommends -y \
    build-essential \
    python3-catkin-tools \
    python3-rosdep \
    python3-rosinstall \
    python3-vcstools \
    ros-noetic-desktop-full \
    && rm -rf /var/lib/apt/lists/*
RUN rosdep init \
 && rosdep fix-permissions \
 && rosdep update --rosdistro $ROS_DISTRO
RUN echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
 
# Set work directory and entrypoint
WORKDIR /workshop_ws
