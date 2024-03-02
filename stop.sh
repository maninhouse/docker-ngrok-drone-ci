#!/bin/bash

# Stop and remove the Docker containers
docker compose down
docker stop ngrok_container
docker rm ngrok_container