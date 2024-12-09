#!/bin/bash

# Checkout to the latest release tag
git fetch --tags
latest_tag=$(git describe --tags `git rev-list --tags --max-count=1`)
git checkout $latest_tag

# Build and deploy using Docker
docker-compose down
docker-compose up --build -d

# Print container IP addresses
docker ps --format "{{.Names}}: {{.Ports}}"
for container in $(docker ps --format "{{.Names}}"); do
    echo "$container IP: $(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $container)"
done
