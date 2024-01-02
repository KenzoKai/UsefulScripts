#!/bin/bash

# Update the package index
apt-get update -y

# Install necessary packages
apt-get install -y build-essential libssl-dev libcairo2-dev libpango1.0-dev gdk-pixbuf2.0-dev libfontconfig1-dev libfreetype6-dev libxkbcommon-dev libxkbcommon-x11-dev

# Download and install NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash

# Source the NVM configuration file
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Install the latest stable version of Node.js using NVM
nvm install --latest-npm

# Set the default Node.js version for new shell sessions
nvm use --default