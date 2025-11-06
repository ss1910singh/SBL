#!/bin/bash

docker --version

docker login

docker pull alpine

docker run -it -d alpine

docker images

container_id=$(docker ps -q | head -n 1)
if [ ! -z "$container_id" ]; then
  docker stop $container_id
fi

docker ps
