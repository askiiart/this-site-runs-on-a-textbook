#!/usr/bin/env bash
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