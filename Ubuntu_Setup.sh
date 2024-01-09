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
        curl -fsSL -o Docker_Install.sh https://raw.githubusercontent.com/KenzoKai/UsefulScripts/main/Docker_Install.sh
        chmod +x ./Docker_Install.sh
        ./Docker_Install.sh
        ;;
    2)  echo "Running NVM Installation..."
        curl -fsSL -o NVM_Install.sh https://raw.githubusercontent.com/KenzoKai/UsefulScripts/main/NVM_Install.sh
        chmod +x ./NVM_Install.sh
        ./NVM_Install.sh
        ;;
    3)  echo "Running Python Installation..."
        curl -fsSL -o Python_Install.sh https://raw.githubusercontent.com/KenzoKai/UsefulScripts/main/Python_Install.sh
        chmod +x ./Python_Install.sh
        ./Python_Install.sh
        ;;
    4)  echo "Running PowerShell Installation..."
        curl -fsSL -o PowerShell_Install.sh https://raw.githubusercontent.com/KenzoKai/UsefulScripts/main/PowerShell_Install.sh
        chmod +x ./PowerShell_Install.sh
        ./PowerShell_Install.sh
        ;;
    5)  echo "Installing NGINX + Redis + MySQL + PHPMyAdmin..."
        curl -fsSL -o nginxredismysqlmyadmin.sh https://raw.githubusercontent.com/KenzoKai/UsefulScripts/main/nginxredismysqlmyadmin.sh
        chmod +x ./nginxredismysqlmyadmin.sh
        ./nginxredismysqlmyadmin.sh
        ;;
    6)  echo "Exiting..."
        exit 0
        ;;
    *)  echo "Invalid choice..."
        exit 1
        ;;
esac
