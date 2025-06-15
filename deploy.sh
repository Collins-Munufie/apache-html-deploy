#!/bin/bash

# Update the system
sudo apt update -y

# Install Apache
sudo apt install apache2 -y

# Enable and start Apache
sudo systemctl enable apache2
sudo systemctl start apache2

# Copy the HTML file to the Apache root directory
sudo cp index.html /var/www/html/index.html
# Set permissions for the HTML file
sudo chown www-data:www-data /var/www/html/index.html
sudo chmod 644 /var/www/html/index.html
# Restart Apache to apply changes
sudo systemctl restart apache2
# Print the status of Apache
sudo systemctl status apache2
# Print a message indicating that the deployment is complete  