#!/bin/bash

set -eux

# Update the system packages.
echo "--> Updating system..."
dnf update -y

# Install Podman and podman-docker for Docker CLI compatibility.
echo "--> Installing Podman..."
dnf install -y podman podman-docker

# Enable lingering for the vagrant user. This allows user-specific services
# to run even when the user is not logged in.
echo "--> Enabling linger for vagrant user..."
loginctl enable-linger vagrant

# As the vagrant user, enable and start the user-level Podman socket.
# This allows using podman (and docker cli) without needing sudo.
echo "--> Enabling and starting user podman socket..."
sudo -iu vagrant systemctl --user enable --now podman.socket

echo "-----------------------------------------------------------"
echo "Setup complete!"
echo "Run 'vagrant ssh' to access the VM."
echo "Inside the VM, you can use 'docker' commands (e.g., 'docker ps')."
echo "-----------------------------------------------------------"
