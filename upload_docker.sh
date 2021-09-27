#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath

dockerpath=prediction-app
DOCKER_ID=minaeshak
# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
echo "Please enter docker password:"
docker login -u "$DOCKER_ID"

# Step 3:
# Push image to a docker repository
docker push minaeshak/prediction-app