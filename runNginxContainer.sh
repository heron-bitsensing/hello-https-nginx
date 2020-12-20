docker run \
    -p 8443:443 \
    -v $(pwd)/auth:/etc/nginx/conf.d \
    nginx
