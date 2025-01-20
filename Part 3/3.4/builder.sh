#!/bin/sh

GITHUB_REPO=$1
DOCKER_HUB_REPO=$2

REPO_NAME=$(basename -s .git "$GITHUB_REPO")

# Clone the GitHub repository
echo "Cloning GitHub repository: $GITHUB_REPO"
git clone https://github.com/"$GITHUB_REPO"

# Navigate to the repository directory
cd "$REPO_NAME" || exit

# Build the Docker image
echo "Building Docker image..."
docker build . -t "$DOCKER_HUB_REPO"

# Login to Docker Hub
echo "logging in to Docker Hub"
docker login --username $DOCKER_USER --password $DOCKER_PWD

# Push the Docker image to Docker Hub
echo "Pushing Docker image to Docker Hub"
docker push "$DOCKER_HUB_REPO"

echo "Successfully built and pushed Docker image to $DOCKER_HUB_REPO"

# Remove the created directory
cd ..
echo "Removing the created directory"
rm -rf "$REPO_NAME"
