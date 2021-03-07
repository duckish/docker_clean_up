#!/bin/bash

###stop all containers:
docker stop $(docker ps -a -q)

###remove all containers
docker rm $(docker ps -a -q)

###remove all docker images
docker rmi $(docker images -a -q) -f

### remove all image network everything
docker system prune

### remove all volumes
docker system prune --volumes
