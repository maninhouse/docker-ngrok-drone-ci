#!/bin/bash

# Source environment variables from .env file
set -a
source .env
set +a

# Expose local 8080 port using Ngrok
docker run --name ngrok --net=host -e NGROK_AUTHTOKEN=${NGROK_AUTH_TOKEN} ngrok/ngrok:latest http &

# Start Drone server and agent using Docker Compose
docker compose up -d