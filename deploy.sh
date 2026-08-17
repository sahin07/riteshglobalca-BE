#!/bin/bash
# Exit immediately if a command exits with a non-zero status
set -e

echo "Deploying ca-backend..."

# Navigate to the backend directory
cd /root/backend_deployment/ca-backend

# Pull latest changes from main branch
echo "Pulling latest changes from main..."
git pull origin main

# Restart containers using Docker Compose
echo "Rebuilding and restarting Docker containers..."
docker compose down
docker compose up -d --build

echo "ca-backend deployment completed successfully!"
