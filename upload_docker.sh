#!/usr/bin/env bash

# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
version=1.1
dockerpath=mahmoudrashwan001/sklearn-ml-app

# Step 2:
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username=mahmoudrashwan001
docker tag "${dockerpath}" "${dockerpath}:${version}"

# Step 3:
docker push mahmoudrashwan001/sklearn-ml-app

