# scripts/cleanup.sh
#!/usr/bin/env bash
set -euo pipefail

echo "[+] Removing dangling Docker images..."
docker image prune -f

echo "[+] Pruning unused containers and networks..."
docker system prune -f
