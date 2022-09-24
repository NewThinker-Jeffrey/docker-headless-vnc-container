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
   --device /dev/nvidia-caps \
   --device /dev/nvidia0 \
   --device /dev/nvidiactl \
   --device /dev/nvidia-modeset  \
   --device /dev/nvidia-uvm \
   --device /dev/nvidia-uvm-tools  \
    ${IMG_NAME}
#    -it --entrypoint /bin/bash ${IMG_NAME} 


# Note: 
# The "--device" lines are my workaround for using nvidia/cuda on ubuntu-21.10 host (by setting "no-cgroups = true" in "/etc/nvidia-container-runtime/config.toml").
# See:
#   https://github.com/NVIDIA/nvidia-docker/issues/1447#issuecomment-757034464
#   https://bbs.archlinux.org/viewtopic.php?pid=2003116#p2003116 中的方式，
# The "--device" lines should be removed if you didn't make that "no-cgroups" change.

# maybe need "sudo systemctl restart docker"
