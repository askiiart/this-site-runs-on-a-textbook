#!/usr/bin/env bash
# For installing Node.js and NPM in the Zybooks lab environment
# This script might be needed, depending on your use case, because the built-in Node.js env is still on 14
echo "Use the bash Zybooks env"
sudo apt-get update
sudo apt-get install -y ca-certificates curl gnupg
NODE_MAJOR=20
echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list
sudo apt-get update --allow-insecure-repositories
sudo apt-get install nodejs -y --allow-unauthenticated
echo "Node.js $(node -v) installed."