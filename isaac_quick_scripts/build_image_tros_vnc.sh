#!/usr/bin/env bash

my_dir=$(cd $(dirname $0) && pwd)
repo_dir=$(dirname $my_dir)
IMG_NAME=tros_vnc
Dockfile=Dockerfile.tros.xfce.vnc
cd $repo_dir
cmd="docker build -f ${Dockfile} -t ${IMG_NAME} $repo_dir"
echo $cmd
$cmd

