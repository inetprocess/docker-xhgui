#!/bin/bash
envsubst '${NGINX_PORT},${MONGO_PORT}' < /etc/nginx/sites-available/default > /etc/nginx/sites-available/default
exec /usr/bin/supervisord -n -c /etc/supervisor/conf.d/supervisord.conf