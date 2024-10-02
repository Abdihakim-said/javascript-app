#!/bin/bash

# Variables
GITHUB_REPO_URL="https://github.com/yourusername/yourrepository.git"
DOCUMENT_ROOT="/var/www/html"

# Update the package index
sudo apt-get update -y

# Install Nginx
sudo apt-get install -y nginx

# Start and enable Nginx service
sudo systemctl start nginx
sudo systemctl enable nginx

# Install Git
sudo apt-get install -y git

# Remove the default Nginx index file
sudo rm -f ${DOCUMENT_ROOT}/index.nginx-debian.html

# Clone the application repository from GitHub
sudo git clone ${GITHUB_REPO_URL} /tmp/yourapplication

# Copy the application files to the Nginx document root
sudo cp -r /tmp/yourapplication/* ${DOCUMENT_ROOT}/

# Set the correct permissions
sudo chown -R www-data:www-data ${DOCUMENT_ROOT}
sudo chmod -R 755 ${DOCUMENT_ROOT}

# Restart Nginx to apply the changes
sudo systemctl restart nginx

echo "Nginx is installed and your application is configured and running."
