#!/usr/bin/env bash

IMG_NAME=ubuntu_vnc_icewm
TEST_CONTAINER_NAME=${IMG_NAME}-container-test

docker kill ${TEST_CONTAINER_NAME}
docker rm ${TEST_CONTAINER_NAME}

# 6902 for noVNC webport, 5902 for vnc viewer
# noVNC webport, connect via http://IP:6902/?password=123
docker run --name ${TEST_CONTAINER_NAME} \
    -p 6902:6901 \
    -p 5902:5901 \
    -v /dev/shm:/dev/shm \
    -d \
    ${IMG_NAME}
#    -it --entrypoint /bin/bash ${IMG_NAME} 
