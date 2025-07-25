# scripts/build_and_push.sh
#!/usr/bin/env bash
set -euo pipefail

GIT_COMMIT=$(git rev-parse --short HEAD)
IMAGE="shubhadak/newapp:$GIT_COMMIT"

echo "[+] Building Docker image..."
docker build -t $IMAGE .

echo "[+] Pushing Docker image to DockerHub..."
docker push $IMAGE

ssh -i ~/.ssh/one.pem ubuntu@52.66.209.208
