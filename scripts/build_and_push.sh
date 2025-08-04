


#!/bin/bash

set -e


IMAGE_NAME="shubhadak/newapp"
TAG="latest"


echo "🔨 Building Docker image..."
docker build -t $IMAGE_NAME:$TAG .


echo "🏷️ Tagging Docker image..."
docker tag $IMAGE_NAME:$TAG $IMAGE_NAME:$TAG


echo "📤 Pushing Docker image to Docker Hub..."
docker push $IMAGE_NAME:$TAG

echo "✅ Docker image pushed successfully!"
