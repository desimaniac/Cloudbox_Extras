#!/bin/bash

domain=

cd /opt/nginx-proxy

for i in *.${domain}.chain.pem;
  do
    base=${i%%??????????}
    sudo certbot revoke --cert-path ${base}/fullchain.pem --key-path ${base}/key.pem
done
