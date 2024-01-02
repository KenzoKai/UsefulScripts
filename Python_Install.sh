#!/bin/bash

# Update the package index
apt-get update -y

# Install necessary packages
apt-get install -y software-properties-common libssl-dev libffi-dev python3-dev

# Add the deadsnakes PPA to APT sources
add-apt-repository ppa:deadsnakes/ppa

# Update the package index again
apt-get update -y

# Install Python 3.10
apt-get install -y python3.10

# Set the default Python version for new shell sessions
update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.10 20

# Install PIP and Poetry
curl -sS https://bootstrap.pypa.io/get-pip.py | python
pip install --upgrade pip
pip install poetry