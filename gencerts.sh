#!/bin/bash

# Generate sample TLS/SSL certs. Don't use these in production!
# may need to set chrome://flags/#allow-insecure-localhost to Enabled for Chrome
openssl req -newkey rsa:2048 -nodes -keyout ./nginx/certs/my-site.com.key -x509 -days 365 -out ./nginx/certs/my-site.com.crt