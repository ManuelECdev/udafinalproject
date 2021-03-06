#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath="manuelecdev/udafinalproject-${env.BUILD_TAG}"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login && docker image tag udafinalproject-${env.BUILD_TAG} $dockerpath

# Step 3:
# Push image to a docker repository
echo "docker image push"
docker image push $dockerpath 




