#!/usr/bin/env bash
set -e 

docker run \
  -p 6080:80 \
  -p 5900:5900 \
  -v /dev/shm:/dev/shm \
  -e VNC_PASSWORD=t35t \
  --platform linux/amd64 \
  dorowu/ubuntu-desktop-lxde-vnc
