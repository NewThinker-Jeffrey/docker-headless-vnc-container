#!/usr/bin/env bash

IMG_NAME=ubuntu_vnc_xfce
TEST_CONTAINER_NAME=${IMG_NAME}-container-test

docker kill ${TEST_CONTAINER_NAME}
docker rm ${TEST_CONTAINER_NAME}

# 6901 for web, 5901 for vnc viewer
docker run -it --name ${TEST_CONTAINER_NAME} \
    -p 6901:6901 \
    -p 5901:5901 \
    -v /dev/shm:/dev/shm \
    --entrypoint /bin/bash \
    ${IMG_NAME} 
