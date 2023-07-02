#!/bin/bash

# Install Composer
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer

# Create directory for Pterodactyl
mkdir -p /var/www/pterodactyl
cd /var/www/pterodactyl

# Download Pterodactyl panel
curl -Lo panel.tar.gz https://github.com/pterodactyl/panel/releases/latest/download/panel.tar.gz
tar -xzvf panel.tar.gz

# Set permissions for storage and bootstrap/cache
chmod -R 755 storage/* bootstrap/cache/
