#!/bin/bash

###stop all containers:
docker kill $(docker ps -a -q)

###remove all containers
docker rm $(docker ps -a -q)

###remove all docker images
docker rmi $(docker images -a -q)