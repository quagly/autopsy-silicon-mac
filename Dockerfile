FROM accetto/ubuntu-vnc-xfce-firefox-g3:22.04

LABEL DESCRIPTION="Autopsy on AMD64 with VNC"
LABEL MAINTAINER="Michael West - https://github.com/quagly/autopsy-silicon-mac" 
LABEL AUTOPSY_VERSION=4.22.1

ENV TERM=linux
USER root

RUN apt-get update && \
      DEBIAN_FRONTEND=noninteractive apt-get upgrade --yes && \
      apt-get install vim --yes


USER headless
WORKDIR /tmp

