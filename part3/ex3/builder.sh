#!/bin/bash

if [ "$#" -lt 2 ]; then
    echo "Error: not enough arguments"
    echo "Usage: $0 <github_repo> <docker_hub_repository>"
    exit 1
fi

GITHUB_REPO=$1
DOCKER_HUB_REPO=$2

set -e

TEMP_DIR=$(mktemp -d)

cleanup() {
    rm -rf "$TEMP_DIR"
}
trap cleanup EXIT

git clone --depth 1 "https://github.com/$GITHUB_REPO.git" "$TEMP_DIR"

cd "$TEMP_DIR"
docker build -t "$DOCKER_HUB_REPO:latest" .

docker push "$DOCKER_HUB_REPO:latest"

echo "Docker image pushed to $DOCKER_HUB_REPO:latest"