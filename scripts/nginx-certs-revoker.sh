#!/bin/bash

domain=<insertdomain.com>

for i in *.${domain}.chain.pem;
  do
    base=${i%%??????????}
    sudo certbot revoke --cert-path ${base}/fullchain.pem --key-path ${base}/key.pem
    #echo ${base}
done
