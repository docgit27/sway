#!/bin/bash

# Check README.md for instructions on how to use this script

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "Git not installed. Installing Git..."
    
    # Use apt to install git
    if command -v apt &> /dev/null; then
        sudo apt update
        sudo apt install git -y
    else
        echo "Cannot install Git automatically using apt. Please install Git manually and run this script again."
        exit 1
    fi
    
    # Check again if git is installed after attempting to install
    if ! command -v git &> /dev/null; then
        echo "Git installation failed. Please install Git manually and run this script again."
        exit 1
    fi
fi

echo "Git is installed. Let's continue..."

# Update package list
echo "Updating package list" 
sudo apt update

# Clone the repository into the home directory
echo "Cloning the repository for the installation into the home directory"
git clone https://github.com/docgit27/sway_installation ~/sway
clear

echo "
                                       
----  ----  ----  ----  ----  ----  ----  ----  ----  ---- 

██████╗  ██████╗  ██████╗
██╔══██╗██╔═══██╗██╔════╝     
██║  ██║██║   ██║██║                 
██║  ██║██║   ██║██║         ______     __     ______                                          
██████╔╝╚██████╔╝╚██████╗   /\  ___\   /\ \   /\__  _\     
╚═════╝  ╚═════╝  ╚═════    \ \ \__ \  \ \ \  \/_/\ \/  
                             \ \_____\  \ \_\    \ \_\ 
██████╗ ███████╗              \/_____/   \/_/     \/_/                                                                                           
╚════██╗╚════██║
 █████╔╝    ██╔╝
██╔═══╝    ██╔╝ 
███████╗   ██║  
╚══════╝   ╚═╝  

----  ----  ----  ----  ----  ----  ----  ----  ----  ----  "                                     


# Install terminal-emulator
echo "Installing terminal emulator"
sudo apt install -y kitty  #adding terminal configuration

# Install Window Manager and other packages
sudo apt install -y light sway swaybg swayidle swayimg swaylock waybar wofi fonts-font-awesome

# Install packages for web development
#sudo apt install -y mysql-server

# Make file executable (if needed, though it's typically already executable)
chmod +x setup.sh packages.sh

# Run the setup script
bash ~/sway/install_scripts/setup.sh

clear

# Run the extra packages
bash ~/sway/install_scripts/packages.sh

clear

echo "Make sure a Display Manager is installed"

# make sure gdm3 is installed
bash ~/sway/install_scripts/gdm.sh

clear

# add bashrc question
bash ~/sway/install_scripts/add_bashrc.sh

clear 

bash ~/sway/install_scripts/printers.sh

clear 

bash ~/sway/install_scripts/bluetooth.sh
sudo apt autoremove

printf "\e[1;32mYou can now reboot! Thank you.\e[0m\n"

