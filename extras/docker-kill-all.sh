#!bin/bash
# script to kill all containers and images from your machine.
# use it cautiously as it will remove everything!
docker kill $(docker ps -q)
docker rm -vf $(docker ps -aq)
docker rmi -f $(docker images -aq)
