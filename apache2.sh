#!/bin/bash

# Update package list
#apt update -y

# Install Apache2
apt install -y apache2

# Start Apache2 service
systemctl start apache2

# Enable Apache2 to start on boot
systemctl enable apache2

# Create a simple index page
echo "Apache2 has been installed and started successfully." > /var/www/html/index.html

echo "Setup complete."