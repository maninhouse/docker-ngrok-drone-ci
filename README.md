# Drone CI with Ngrok and Docker

Setting up [Drone CI for Github provider](https://docs.drone.io/server/provider/github/) with [Ngrok](https://ngrok.com/docs/getting-started/?os=linux) and Docker Compose

## Getting started

### Expose local 8080 port using Ngrok
```
$ export NGROK_AUTH_TOKEN=YOUR_NGROK_AUTH_TOKEN
$ export NGROK_DOMAIN=YOUR_NGROK_DOMAIN

$ docker run --name ngrok_container --net=host -it -e NGROK_AUTHTOKEN=${NGROK_AUTH_TOKEN} ngrok/ngrok:latest http --domain=${NGROK_DOMAIN} 8080
```

### Start Drone with Docker Compose
```
$ export DRONE_GITHUB_CLIENT_ID=YOUR_GITHUB_CLIENT_ID >> .env
$ export DRONE_GITHUB_CLIENT_SECRET=YOUR_GITHUB_CLIENT_SECRET >> .env
$ export DRONE_RPC_SECRET=YOUR_DRONE_RPC_SECRET >> .env
$ export DRONE_SERVER_HOST=YOUR_DRONE_SERVER_HOST >> .env

$ docker compose up
```

## Quick Start

### Running Drone CI in the Background
if `.env` file is already set up

```bash
$ chmod +x start.sh
$ ./start.sh
```

## Stop Drone CI and Ngrok
```bash
$ chmod +x stop.sh
$ ./stop.sh
```