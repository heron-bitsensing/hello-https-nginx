#!/usr/bin/env bash

cat > auth/default.conf <<EOF
server {
    listen 443 ssl;
    server_name localhost;
    ssl_certificate      /etc/nginx/conf.d/server.pem;
    ssl_certificate_key  /etc/nginx/conf.d/server-key.pem;

    ssl_verify_client on;
    ssl_client_certificate /etc/nginx/conf.d/rootCA.pem;

    location / {
        root  /usr/share/nginx/html;
        index index.html index.htm;
    }
}
EOF

cat auth/default.conf
