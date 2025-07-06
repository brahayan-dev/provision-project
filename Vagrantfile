# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # Use Rocky Linux 9 as the base box.
  config.vm.box = "rockylinux/9"

  # Configure the virtual machine's resources.
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
    vb.cpus = "2"
  end

  # Use the bootstrap.sh script to provision the virtual machine.
  config.vm.provision "shell", path: "bootstrap.sh"
end
