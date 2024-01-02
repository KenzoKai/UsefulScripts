#!/bin/bash

# Update the package index
apt-get update -y

# Install necessary packages
apt-get install -y apt-transport-https ca-certificates curl software-properties-common

# Add Docker's official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add the Docker repository to APT sources
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Update the package index again
apt-get update -y

# Install Docker
apt-get install -y docker-ce docker-compose

# Enable automatic updates
apt-get install -y unattended-upgrades apt-listchanges

# Configure automatic updates
echo "APT::Periodic::Update-Package-Lists \"1\";" > /etc/apt/apt.conf.d/20auto-upgrades
echo "APT::Periodic::Unattended-Upgrade \"1\";" >> /etc/apt/apt.conf.d/20auto-upgrades

# Configure the firewall to allow incoming connections on port 80 and 443
ufw allow 80/tcp
ufw allow 443/tcp

# Start Docker and enable it at boot time
systemctl start docker
systemctl enable docker