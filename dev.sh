#!/usr/bin/bash

docker run \
  -v "/home/carl/certs/bigbraincarl.com/fullchain1.pem:/certs/bigbraincarl.com.pem" \
  -p 80:80 \
  -p 443:443 \
  --name test \
  carl-websites
