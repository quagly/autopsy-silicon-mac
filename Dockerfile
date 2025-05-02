FROM accetto/ubuntu-vnc-xfce-firefox-g3:22.04

LABEL DESCRIPTION="Autopsy on AMD64 with VNC"
LABEL MAINTAINER="Michael West - https://github.com/quagly/autopsy-silicon-mac" 
LABEL AUTOPSY_VERSION=4.22.1

# is this needed?
ENV TERM=linux

USER root

RUN apt-get update && \
      DEBIAN_FRONTEND=noninteractive apt-get upgrade --yes && \
      apt-get install vim unzip --yes

WORKDIR /usr/local/share

# dependencies
RUN wget https://github.com/sleuthkit/autopsy/releases/download/autopsy-4.22.1/autopsy-4.22.1_v2.zip && \
      unzip autopsy-4.22.1_v2.zip && \
      bash autopsy-4.22.1/linux_macos_install_scripts/install_prereqs_ubuntu.sh
      
# sleuthkit
RUN wget https://github.com/sleuthkit/sleuthkit/releases/download/sleuthkit-4.14.0/sleuthkit-java_4.14.0-1_amd64.deb && \
      apt-get install ./sleuthkit-java_4.14.0-1_amd64.deb --yes

# autopsy
RUN bash autopsy-4.22.1/linux_macos_install_scripts/install_application.sh -i autopsy-4.22.1 -j /usr/lib/jvm/java-1.17.0-openjdk-amd64


USER headless



