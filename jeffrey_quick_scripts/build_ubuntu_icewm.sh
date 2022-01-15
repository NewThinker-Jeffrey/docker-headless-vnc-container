#!/usr/bin/env bash

my_dir=$(cd $(dirname $0) && pwd)
repo_dir=$(dirname $my_dir)
IMG_NAME=ubuntu_vnc_icewm_cuda
cd $repo_dir
cmd="docker build -f Dockerfile.ubuntu.icewm.vnc -t ${IMG_NAME} $repo_dir"
echo $cmd
$cmd
