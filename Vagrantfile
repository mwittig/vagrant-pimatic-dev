# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "debian/jessie64"

  config.vm.provision "shell", path: "setup_4.x.sh"
  config.vm.provider "virtualbox" do |vb|
  # vb.gui = true
  #vb.customize ["modifyvm", :id, "--memory", "2048"]
  #vb.customize ["modifyvm", :id, "--cpus", "2"]
  vb.customize ["modifyvm", :id, "--nicpromisc2", "allow-all"]
  vb.customize ["modifyvm", :id, "--nictype2", "Am79C973"]
  vb.customize ["modifyvm", :id, "--nicpromisc3", "allow-all"]
  vb.customize ["modifyvm", :id, "--nictype3", "Am79C973"]
  end

  config.vm.network :forwarded_port, host: 9999, guest: 80
end