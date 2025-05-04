#!/usr/bin/env bash
set -e 

# test vnc

docker run \
  --rm \
  --detach \
  --publish 36901:6901 \
  --publish 35901:5901 \
  --platform linux/amd64 \
  --shm-size=256m \
  --env VNC_RESOLUTION=1920x1080 \
  --hostname vnctest \
  accetto/ubuntu-vnc-xfce-firefox-g3:22.04
