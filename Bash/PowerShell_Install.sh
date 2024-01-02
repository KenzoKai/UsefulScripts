#!/bin/bash
sudo apt-get update -y
sudo apt-get install -y software-properties-common
wget -q https://packages.microsoft.com/config/ubuntu/$DISTRIB_ID/$(${DISTRIB_RELEASE}+0).list
sudo mv $DISTRIB_ID-$(${DISTRIB_RELEASE}+0).list /etc/apt/sources.list.d/microsoft-prod.list
sudo apt-get install -y apt-transport-https
sudo apt-get update -y
sudo apt-get install -y pwsh