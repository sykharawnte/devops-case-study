# scripts/build_and_push.sh
#!/usr/bin/env bash
set -euo pipefail

GIT_COMMIT=$(git rev-parse --short HEAD)
IMAGE="shubhadak/newapp:$GIT_COMMIT"
LATEST_IMAGE="shubhadak/newapp:latest"

echo "[+] Building Docker image..."
docker build -t $IMAGE -t $LATEST_IMAGE .

echo "[+] Pushing Docker image to DockerHub..."
docker push $IMAGE
docker push $LATEST_IMAGE

ssh -i ~/.ssh/one.pem ubuntu@13.233.148.67
