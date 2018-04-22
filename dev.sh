#!/usr/bin/bash

docker kill carl-websites || true
docker rm carl-websites || true
docker run \
  -d \
  -v "$HOME/certs/bigbraincarl.com/fullchain1.pem:/certs/bigbraincarl.com.pem" \
  -v "$HOME/certs/bigbraincarl.com/privkey1.pem:/certs/bigbraincarl.com.key.pem" \
  -v "$HOME/certs/picturesofcarl.com/fullchain1.pem:/certs/picturesofcarl.com.pem" \
  -v "$HOME/certs/picturesofcarl.com/privkey1.pem:/certs/picturesofcarl.com.key.pem" \
  -v "$(pwd)/picturesofcarl/dist:/var/www/picturesofcarl" \
  -v "$(pwd)/bigbraincarl/dist:/var/www/bigbraincarl" \
  -p 80:80 \
  -p 443:443 \
  --name carl-websites \
  carl-websites
