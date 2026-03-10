# !/bin/bash

echo "Starting setup..."

OS=$(uname -s)

if [ "$OS" != "Linux" ]; then
    echo "Using windows configuration..." &&
    cp devcontainers/devcontainer.json.windows .devcontainer/devcontainer.json && echo "Finished Setup!"
else
    echo "Using linux configuration..."
    cp devcontainers/devcontainer.json.linux .devcontainer/devcontainer.json && echo "Finished Setup!"
fi

