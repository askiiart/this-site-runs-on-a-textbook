#!/usr/bin/env bash
sudo cp /usercode/this-site-runs-on-a-textbook/nginx/default.conf /etc/nginx/conf.d
sudo nginx
# Remote port forwarding in the background
ssh -fN -R 6000:localhost:6000 root@askiiart.net -i /usercode/ssh/id_rsa

# Keeps it alive
while :
do
    touch /usercode/keep-alive
    sleep 5
    echo "bap! bap! bap! bap! stayin' alive! stayin' alive!" > /usercode/keep-alive
    sleep 5
    rm -f /usercode/keep-alive
    sleep 5
done