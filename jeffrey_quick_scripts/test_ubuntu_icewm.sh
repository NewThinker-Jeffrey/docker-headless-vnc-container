#!/usr/bin/env bash

IMG_NAME=ubuntu_vnc_icewm

# 6902 for web, 5902 for vnc viewer
docker run -it --name ${IMG_NAME}-container-test \
    -p 6902:6901 \
    -p 5902:5901 \
    -v /dev/shm:/dev/shm \
    ${IMG_NAME}
