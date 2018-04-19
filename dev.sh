#!/usr/bin/bash

docker rm test
docker run \
  -v "/home/carl/certs/bigbraincarl.com/fullchain1.pem:/certs/bigbraincarl.com.pem" \
  -v "/home/carl/certs/bigbraincarl.com/privkey1.pem:/certs/bigbraincarl.com.key.pem" \
  -p 80:80 \
  -p 443:443 \
  --name test \
  carl-websites
