# docker-desktop-eclipse-ide-simple

## Description
This is a POC project to demonstrate latest eclipse an integrated development environment for java, php, web programming.

This is a barebones installation no pluggins where added. That said, by default gradle and maven are installed by default

In order to be able to get files out of the container one must add a *volume* to the docker run command.

ie.
without a volume
`docker run --rm` ...
with a volume
`docker run --rm -v $(pwd):/app` ...

Supports X11 display forwarding from docker container.

## Tech stack
- eclipse
- java
    - ant
    - gradle
    - maven
- java ee
- c/cpp
- php

## Docker stack
- ubuntu

## To run
`sudo ./install.sh -u`

## To stop (optional)
`sudo ./install.sh -d`

## To see help
`sudo ./install.sh -h`

## Credit
- [Eclipse github repo](https://stackoverflow.com/questions/35282460/install-eclipse-via-terminal)
- [Additional eclipse plugins](https://github.com/ArloL/eclipse-projects)