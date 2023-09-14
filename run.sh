#!/usr/bin/env bash
set -e
sudo apt update
sudo apt install nginx -y
sudo cp /usercode/nginx/default.conf /etc/nginx/conf.d/
sudo nginx