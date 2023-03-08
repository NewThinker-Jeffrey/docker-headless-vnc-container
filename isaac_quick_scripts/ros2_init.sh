#!/usr/bin/env bash


NAME=ros2
IMAGE=ros2_vnc
docker kill $NAME
docker rm $NAME
docker run -d \
	--name $NAME \
	-v /home/isaac:/home/isaac \
	-v /dev/shm:/dev/shm \
	--pid=host \
	--net=host \
	$IMAGE

	#-p 5901:5901 \
	#-p 7900-8149:7900-8149 \

docker exec $NAME bash -c "echo 'export ROS_DOMAIN_ID=2' >> /root/.bashrc"

# ROS_DOMAIN_ID=2, first node port = 7400 + ROS_DOMAIN_ID * 250, i.e. the port range is 7900-8149

# https://stackoverflow.com/a/66168901



