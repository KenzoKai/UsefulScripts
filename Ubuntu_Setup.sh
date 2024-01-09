#!/bin/bash

echo "Select the script you want to run:"
echo "1. Docker Installation"
echo "2. NVM Installation"
echo "3. Python Installation"
echo "4. PowerShell Installation"
echo "5. Install NGINX + Redis + MySQL + PHPMyAdmin"
echo "6. Exit"

read -p "Enter your choice [1-6]: " choice

case $choice in
    1)  echo "Running Docker Installation..."
        curl -fsSL https://raw.githubusercontent.com/KenzoKai/UsefulScripts/main/Bash/Docker_Install.sh | sudo bash
        ;;
    2)  echo "Running NVM Installation..."
        curl -fsSL https://raw.githubusercontent.com/KenzoKai/UsefulScripts/main/Bash/NVM_Install.sh | sudo bash
        ;;
    3)  echo "Running Python Installation..."
        curl -fsSL https://raw.githubusercontent.com/KenzoKai/UsefulScripts/main/Bash/Python_Install.sh | sudo bash
        ;;
    4)  echo "Running PowerShell Installation..."
        curl -fsSL https://raw.githubusercontent.com/KenzoKai/UsefulScripts/main/Bash/PowerShell_Install.sh | sudo bash
        ;;
    5)  echo "Installing NGINX + Redis + MySQL + PHPMyAdmin..."
        curl -fsSL https://raw.githubusercontent.com/KenzoKai/UsefulScripts/main/Bash/nginxredismysqlmyadmin.sh | sudo bash
        ;;
    6)  echo "Exiting..."
        exit 0
        ;;
    *)  echo "Invalid choice..."
        exit 1
        ;;
esac
