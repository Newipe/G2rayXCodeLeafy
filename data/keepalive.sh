#!/bin/bash
i=0
while true; do
    i=$((i+1))
    printf "\r[G2ray] Simulating activity... %d" "$i"
    [ $((i % 60)) -eq 0 ] && { curl -s -m 3 https://github.com > /dev/null 2>&1; sync; }
    sleep 1
done
