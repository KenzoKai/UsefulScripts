#!/bin/bash

# Update and Upgrade the System
sudo apt update && sudo apt upgrade -y

# Prompt for the primary domain name
read -p "Enter the primary website domain: " domainName

# Install Nginx, Redis, MySQL, and Certbot
sudo apt install nginx redis-server mysql-server -y

# Install phpMyAdmin
sudo apt install phpmyadmin -y

# Configuring Nginx for the domain
sudo mkdir -p /var/web/"$domainName"
sudo chown -R $USER:$USER /var/web/"$domainName"
sudo chmod -R 755 /var/web

cat <<EOF | sudo tee /etc/nginx/sites-available/$domainName
server {
    listen 80;
    server_name $domainName www.$domainName;

    root /var/web/$domainName;
    index index.html index.htm index.php;

    location / {
        try_files \$uri \$uri/ =404;
    }

    location ~ \.php$ {
        include snippets/fastcgi-php.conf;
        fastcgi_pass unix:/var/run/php/php7.4-fpm.sock; # Check PHP version
    }

    location ~ /\.ht {
        deny all;
    }
}
EOF

# Enable the site and reload Nginx
sudo ln -s /etc/nginx/sites-available/$domainName /etc/nginx/sites-enabled/
sudo nginx -t && sudo systemctl reload nginx

# Install and configure Certbot for SSL
sudo apt install python3-certbot-nginx -y
sudo certbot --nginx -d $domainName -d www.$domainName

echo "Setup completed for $domainName"
