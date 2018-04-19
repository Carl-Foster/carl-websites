docker run \
  -v "~/certs/bigbraincarl.com/fullchain1.pem:/certs/bigbraincarl.com.pem" \
  -v "~/certs/bigbraincarl.com/privkey1.pem:/certs/bigbraincarl.com.key.pem" \
  -p 80:80 \
  -p 443:443 \
  carlfoster/carl-websites
