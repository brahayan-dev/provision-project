# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # Use a systemd-enabled Rocky Linux 9 as the base image to simulate a VM.
  config.vm.box = "solita/rockylinux-systemd:9"

  # Configure the Docker provider.
  config.vm.provider "docker" do |d|
    # This image comes with an SSH server, so Vagrant can connect to it.
    d.has_ssh = true
  end

  # Use the bootstrap.sh script to provision the virtual machine.
  config.vm.provision "shell", path: "bootstrap.sh"
end
