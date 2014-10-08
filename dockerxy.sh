#!/bin/bash
#Author: Lucas Ludziejewski / +rehabstudio
#######################################################################

# Install docker
curl -sSL https://get.docker.io/ubuntu/ | sudo sh

# Build ziproxy container
docker build -t="lucas/ziproxy" .

# Run container 
docker run -d -p 8080:8080 -t lucas/ziproxy


exit 0;

