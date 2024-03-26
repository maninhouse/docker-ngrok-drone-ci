#!/bin/bash

# Stop and remove the Docker containers
docker compose down
docker stop ngrok
docker rm ngrok