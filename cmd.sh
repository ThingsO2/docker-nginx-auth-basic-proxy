#!/usr/bin/env bash
set -euo pipefail

envsubst < default.conf > /etc/nginx/conf.d/default.conf
envsubst < auth.htpasswd > /etc/nginx/auth.htpasswd

nginx -g "daemon off;"
