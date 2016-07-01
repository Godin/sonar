#!/bin/bash

echo "Generating self-signed certificate..."
openssl req -x509 -newkey rsa:4086 \
  -subj "/C=XX/ST=XXXX/L=XXXX/O=XXXX/CN=localhost" \
  -keyout "/usr/local/apache2/conf/server.key" \
  -out "/usr/local/apache2/conf/server.crt" \
  -days 3650 -nodes -sha256

exec "$@"
