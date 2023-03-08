#!/usr/bin/env bash


NAME=tros
IMAGE=tros_vnc
docker run -d \
	--name $NAME \
	-v /home/isaac:/home/isaac \
	-p 5903:5901 \
	$IMAGE


