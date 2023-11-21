#!/bin/bash

# Update and Upgrade
sudo apt update && sudo apt upgrade -y

# Install Visual Studio Code
sudo apt install -y code

# Install zsh
sudo apt install -y zsh

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Set Zsh as default shell
chsh -s $(which zsh)

# Set Zsh theme
rm ~/.oh-my-zsh/themes/edvardm.zsh-theme && cp ~/profileSet/edvardm.zsh-theme ~/.oh-my-zsh/themes
source ~/.oh-my-zsh/oh-my-zsh.sh

# Install Python
sudo apt install -y python3 python3-pip

# Install Node.js, npm, & bun for JavaScript
sudo apt install -y nodejs npm 
curl -fsSL https://bun.sh/install | bash 

# Install Java (OpenJDK)
sudo apt install -y default-jdk

# Install build-essential for C (includes GCC)
sudo apt install -y build-essential

# Other useful tools
sudo apt install -y git curl

# Clean up
sudo apt autoremove -y
