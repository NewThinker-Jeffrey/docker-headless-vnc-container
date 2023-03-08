#!/usr/bin/env bash


NAME=ros
IMAGE=ros_vnc
docker run -d \
	--name $NAME \
	-v /home/isaac:/home/isaac \
	-p 5902:5901 \
	$IMAGE


