#!/bin/bash

# Make the script executable
chmod +x /home/ubuntu/scripts/setup_nginx.sh

# Update package lists
apt update

# Install nginx and check if the installation was successful
if apt install -y nginx; then
    echo "Nginx installed successfully."
else
    echo "Failed to install Nginx."
    exit 1
fi

# Start nginx and enable it to start on boot
systemctl start nginx
systemctl enable nginx

# Check the status of nginx service
if systemctl status nginx | grep "active (running)"; then
    echo "Nginx is running."
else
    echo "Failed to start Nginx."
    exit 1
fi
