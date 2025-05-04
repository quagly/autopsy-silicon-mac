# autopsy-silicon-mac
provides a docker AMD64 image with [autopsy](https://www.autopsy.com) version 4

## Purpose
run autopsy on silicon mac via rosetta for performance
though this should run fine on any AMD64 system

## Getting Started
Assuming apple silicon

1. install rosetta 2
`softwareupdate --install-rosetta`

2. install [docker desktop](https://docs.docker.com/get-started/introduction/get-docker-desktop/)

3. configure docker desktop
go to Setting->General->Virtual Machine Options
enable 
* Apple Virtualization
* Rosetta
* VirtioFS

![Alt text](./images/docker-desktop-configuration.png)


## Limitations

1. This is a single user system. Autopsy 4 supports multi-user.
2.

## References

* [docker-desktop-vnc](https://hub.docker.com/r/elestio/docker-desktop-vnc)
* [autopsy](https://www.autopsy.com)
