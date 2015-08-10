## Devpi Dockerfile [![](https://badge.imagelayers.io/marcelhuberfoo/devpi.svg)](https://imagelayers.io/?images=marcelhuberfoo/devpi 'Get your own badge on imagelayers.io')


This repository contains **Dockerfile** of [Devpi](http://doc.devpi.net/) for [Docker](https://www.docker.io/)'s [trusted build](https://index.docker.io/u/marcelhuberfoo/devpi/) published to the public [Docker Registry](https://index.docker.io/).


### Dependencies

* [dockerfile/ubuntu](http://dockerfile.github.io/#/ubuntu)


### Installation

1. Install [Docker](https://www.docker.io/).

2. Download [trusted build](https://index.docker.io/u/marcelhuberfoo/devpi/) from public [Docker Registry](https://index.docker.io/): `docker pull marcelhuberfoo/devpi`

   (alternatively, you can build an image from Dockerfile: `docker build -t="marcelhuberfoo/devpi" github.com/marcelhuberfoo/docker-devpi`)


### Usage

#### Run `devpi-server`

    docker run -d --name devpi -p 3141:3141 marcelhuberfoo/devpi

Devpi creates a user named `root` by default, its password can be set with
`DEVPI_PASSWORD` environment variable.
