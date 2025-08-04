# # scripts/build_and_push.sh
# #!/usr/bin/env bash
# set -euo pipefail

# GIT_COMMIT=$(git rev-parse --short HEAD)
# IMAGE="shubhadak/newapp:$GIT_COMMIT"
# LATEST_IMAGE="shubhadak/newapp:latest"

# echo "[+] Building Docker image..."
# docker build -t $IMAGE -t $LATEST_IMAGE .

# echo "[+] Pushing Docker image to DockerHub..."
# docker push $IMAGE
# docker push $LATEST_IMAGE

# ssh -i ~/.ssh/one.pem ubuntu@13.233.148.67

#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Define variables
IMAGE_NAME="shubhadak/newapp"
TAG="latest"

# Authenticate with Docker (optional - ensure login is set up in Jenkins before this)
# echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

# Build the Docker image
echo "🔨 Building Docker image..."
docker build -t $IMAGE_NAME:$TAG .

# Tag the image (if needed for clarity)
echo "🏷️ Tagging Docker image..."
docker tag $IMAGE_NAME:$TAG $IMAGE_NAME:$TAG

# Push the image to Docker Hub
echo "📤 Pushing Docker image to Docker Hub..."
docker push $IMAGE_NAME:$TAG

echo "✅ Docker image pushed successfully!"
