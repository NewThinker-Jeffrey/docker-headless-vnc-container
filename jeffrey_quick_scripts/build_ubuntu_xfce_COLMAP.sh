#!/usr/bin/env bash

my_dir=$(cd $(dirname $0) && pwd)
repo_dir=$(dirname $my_dir)
IMG_NAME=ubuntu_vnc_xfce_cuda_COLMAP
cd $repo_dir
cmd="docker build -f Dockerfile.ubuntu.xfce.vnc.COLMAP -t ${IMG_NAME} $repo_dir"
echo $cmd
$cmd

