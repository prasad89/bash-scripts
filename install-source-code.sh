#!/bin/bash

# Inform the user about the configuration step
echo "Configuring the build..."

# Configure the build
./configure

# Inform the user about the build step
echo "Building the project..."

# Build the project
make

# Inform the user about the installation step
echo "Installing the project..."

# Install the project with sudo and password input
echo "Please enter your password to install the project:"
read -s password  # Prompt the user for their password securely

# Use sudo with the provided password to make the installation
echo "$password" | sudo -S make install

# Inform the user about the completion of the script
echo "Installation completed successfully."