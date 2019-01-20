# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = "centos/7"

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  config.vm.network "forwarded_port", guest: 5000, host: 8080

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]  

  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
  #   vb.memory = "1024"
  end
  #
  # View the documentation for the provider you are using for more
  # information on available options.

  # Define a Vagrant Push strategy for pushing to Atlas. Other push strategies
  # such as FTP and Heroku are also available. See the documentation at
  # https://docs.vagrantup.com/v2/push/atlas.html for more information.
  # config.push.define "atlas" do |push|
  #   push.app = "YOUR_ATLAS_USERNAME/YOUR_APPLICATION_NAME"
  # end

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  config.vm.provision "shell", inline: <<-SHELL
    sudo sed -i s/10.0.2.3/8.8.8.8/g /etc/resolv.conf
    sudo yum -y update
	sudo yum -y install yum-utils
    sudo yum -y install tmux
    sudo yum -y install cmake
    sudo yum -y install gcc
    sudo yum -y install gcc-c++
    sudo yum -y install clang
    sudo yum -y install git
    sudo yum -y install wget
    sudo yum -y install vim
    sudo yum -y install ctags
    sudo yum -y install unzip
    sudo yum -y install postgresql postgresql-server postgresql-contrib
    sudo yum -y install bind-utils
    sudo yum -y install epel-release
    sudo yum -y install python-pip
	sudo yum -y install https://centos7.iuscommunity.org/ius-release.rpm
	sudo yum -y install python3.6u
	sudo yum -y install python3.6u-pip
	curl --silent --location https://rpm.nodesource.com/setup_10.x | sudo bash -
	sudo yum -y install nodejs
	npm install -g @angular/cli
    cp /vagrant/bashrc /home/vagrant/.bashrc
    cp /vagrant/vimrc /home/vagrant/.vimrc
    
  SHELL
  config.vm.provision "shell", path: "java.sh"
  config.vm.provision "shell", path: "node.sh"
  config.vm.provision "shell", path: "mvn.sh"
  config.vm.provision "shell", path: "protoc.sh"
  config.vm.provision "shell", path: "cmake.sh"
  config.vm.provision "shell", path: "keys.sh", privileged: false
  config.vm.provision "shell", path: "vim.sh", privileged: false
  config.vm.provision "shell", path: "postgres.sh"

end
