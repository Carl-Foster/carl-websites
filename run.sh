sudo docker pull carlfoster/carl-websites
sudo docker stop $(sudo docker ps -q)
sudo docker run \
  -d --rm \
  -v "$HOME/certs/bigbraincarl.com/fullchain1.pem:/certs/bigbraincarl.com.pem" \
  -v "$HOME/certs/bigbraincarl.com/privkey1.pem:/certs/bigbraincarl.com.key.pem" \
  -v "$HOME/certs/picturesofcarl.com/fullchain1.pem:/certs/picturesofcarl.com.pem" \
  -v "$HOME/certs/picturesofcarl.com/privkey1.pem:/certs/picturesofcarl.com.key.pem" \
  -p 80:80 \
  -p 443:443 \
  carlfoster/carl-websites

