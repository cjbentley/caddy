#!/bin/bash
docker buildx create --name caddybuilder --use
docker buildx inspect --bootstrap
docker buildx build --platform linux/amd64,linux/arm64 -t cjbentley/caddy:latest --push .
docker buildx rm