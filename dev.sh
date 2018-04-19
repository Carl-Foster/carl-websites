#!/usr/bin/bash

docker kill test || true
docker rm test || true
docker run \
  -d \
  -v "/home/carl/certs/bigbraincarl.com/fullchain1.pem:/certs/bigbraincarl.com.pem" \
  -v "/home/carl/certs/bigbraincarl.com/privkey1.pem:/certs/bigbraincarl.com.key.pem" \
  -p 80:80 \
  -p 443:443 \
  --name test \
  carl-websites
