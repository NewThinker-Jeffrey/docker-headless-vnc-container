#!/usr/bin/env bash

IMG_NAME=ubuntu_vnc_xfce_cuda
TEST_CONTAINER_NAME=${IMG_NAME}-container-test

docker kill ${TEST_CONTAINER_NAME}
docker rm ${TEST_CONTAINER_NAME}

# 6901 for noVNC webport, 5901 for vnc viewer
# noVNC webport, connect via http://IP:6901/?password=123
docker run --name ${TEST_CONTAINER_NAME} --gpus all \
    -p 6901:6901 \
    -p 5901:5901 \
    -v /dev/shm:/dev/shm \
    -d \
    ${IMG_NAME}
#    -it --entrypoint /bin/bash ${IMG_NAME} 

