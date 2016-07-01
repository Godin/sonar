#!/bin/sh

set -e

echo "Generating self-signed certificate..."
openssl req -x509 -newkey rsa:4086 \
  -subj "/C=XX/ST=XXXX/L=XXXX/O=XXXX/CN=localhost" \
  -keyout "/etc/nginx/cert.key" \
  -out "/etc/nginx/cert.crt" \
  -days 3650 -nodes -sha256

exec "$@"
