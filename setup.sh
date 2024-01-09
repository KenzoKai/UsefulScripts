#!/bin/bash
echo "Setup Script Initializing..."
bash -i curl -fsSL -o Ubuntu_Setup.sh https://raw.githubusercontent.com/KenzoKai/UsefulScripts/main/Ubuntu_Setup.sh
bash -i "chmod +x Ubuntu_Setup.sh"
bash -i ./Ubuntu_Setup.sh
