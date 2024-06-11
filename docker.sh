#!/bin/bash
set -ex

if ! command -v docker &> /dev/null; then
  echo "Error: Docker unavailable."
  exit 1
fi

if ! docker ps -q > /dev/null 2>&1; then
  echo "Error: Docker not running."
  exit 1
fi

if ! command -v hugo &> /dev/null; then
  echo "Error: Hugo unavilable."
  exit 1
fi

# Pull the latest nginx image
docker pull nginx:latest

# Build 
hugo --config hugo.toml

# Run the container with desired options
docker run --name website \
  -d \
  -p 8080:80 \
  -v "$(pwd)/public:/usr/share/nginx/html:ro" \
  nginx

echo "Nginx container 'website' started!"
