#! /bin/bash

mkdir ~/download
docker build -t local/transimission:latest .


docker run -i -t -d --name=transmission \
    -v $PWD/config:/etc/transmission/config -v ~/download:/download \
    -p 9091:9091 -p 51413:51413 -p 51413:51413/udp \
    local/transmission:latest
