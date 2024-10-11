#!/bin/bash


chmod +x /home/ubuntu/scripts/setup_nginx.sh

#install nginx
apt update
apt install -y nginx 

if 
sudo systemctl start nginx
sudo systemctl enable nginx

if systemctl status nginx | grep "active(running)"; then
    echo "Nginx is running."
else
    echo "Failed to start Nginx."
    exit 1
fi
