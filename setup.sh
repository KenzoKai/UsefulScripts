#!/bin/bash
echo "Setup Script Initializing..."
bash -c "curl -fsSL -o Ubuntu_Setup.sh https://raw.githubusercontent.com/KenzoKai/UsefulScripts/main/Ubuntu_Setup.sh"
bash -c "chmod +x Ubuntu_Setup.sh"
bash -c "./Ubuntu_Setup.sh"
