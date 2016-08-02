# Sinopia (Docker Image)

[![Build Status](https://img.shields.io/travis/bankiru/docker-sinopia/master.svg?style=flat-square)](https://travis-ci.org/bankiru/docker-sinopia)
[![Docker Pulls](https://img.shields.io/docker/pulls/bankiru/sinopia.svg?style=flat-square)](https://hub.docker.com/r/bankiru/sinopia/)
[![Docker Stars](https://img.shields.io/docker/stars/bankiru/sinopia.svg?style=flat-square)](https://hub.docker.com/r/bankiru/sinopia/)
[![](https://images.microbadger.com/badges/image/bankiru/sinopia.svg)](https://hub.docker.com/r/bankiru/sinopia/)
[![](https://badge.imagelayers.io/bankiru/sinopia:latest.svg)](https://imagelayers.io/?images=bankiru/sinopia:latest 'Get your own badge on imagelayers.io')
[![Average time to resolve an issue](http://isitmaintained.com/badge/resolution/bankiru/docker-sinopia.svg)](http://isitmaintained.com/project/bankiru/docker-sinopia "Average time to resolve an issue")
[![Percentage of issues still open](http://isitmaintained.com/badge/open/bankiru/docker-sinopia.svg)](http://isitmaintained.com/project/bankiru/docker-sinopia "Percentage of issues still open")
[![License MIT](https://img.shields.io/:license-mit-blue.svg?style=flat-square)]()

> [Sinopia](https://github.com/rlidwka/sinopia) is a private npm repository server.

## Recommend Usage

- To run default container on port 4873

`docker run --name sinopia -d -p 4873:4873 bankiru/sinopia`

- to sync storage / config.yaml

`mkdir -p /path/to/storage`

`mkdir -p /path/to/config.yaml`

*edit [config.yaml](https://github.com/bankiru/docker-sinopia/blob/master/config.yaml)*


`docker run --name sinopia -d -p 4873:4873 -v <local-path-to-storage>:/sinopia/storage -v <local-path-to-config>:/sinopia/config.yaml bankiru/sinopia`

- The volume will be synced, so you can update the anything linked outside of the container and it will automatically change the files inside the container. Run `docker restart sinopia` if `config.yaml` is updated.
