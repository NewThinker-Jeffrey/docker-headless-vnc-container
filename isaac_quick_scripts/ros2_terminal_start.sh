#!/usr/bin/env bash


NAME=ros2_terminal
IMAGE=10.10.0.21:6500/ros2/ros2:ros-foxy-desktop
docker run -it --rm \
	--name $NAME \
	-v /home/isaac:/home/isaac \
	$IMAGE /bin/bash


