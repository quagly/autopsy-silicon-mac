#!/usr/bin/env bash
set -e 

docker run \
  -p 6080:80 \
  -p 5900:5900 \
  -v /dev/shm:/dev/shm \
  -e VNC_PASSWORD=t35t \
  -v "${PWD}"/knime-workspace:/root/knime-workspace \
  --platform linux/amd64 \
  elestio/docker-desktop-vnc

