# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

    config.vm.box = "precise64"
    config.vm.box_url = "http://files.vagrantup.com/precise64.box"

    # port forwarding
    config.vm.network :forwarded_port, guest: 80, host: 8080

    # setup a private network with a static IP Address
    # nfs requires a static IP address
    config.vm.network :private_network, ip: "10.5.0.2"

    # sharing folders
    # Vagrant 1.1+ automatically ignores nfs on Windows OS
    config.vm.synced_folder ".", "/vagrant", :nfs => true

    config.vm.provider "virtualbox" do |vb|

        vb.name = "my_vm" # custom VM name

        vb.gui = true     # enables GUI, defaults is false

        # Vagrant exposes a way to call  any command against VBoxManage
        # Example: Change the memory of the VM
        vb.customize ["modifyvm", :id, "--memory", "512"]
    end

    config.vm.provision :puppet do |puppet|
        # defines the puppet folder
        puppet.manifests_path = "vagrant/puppet"
        # initial manifest
        puppet.manifest_file = "init.pp"

        # defines the puppet modules folder
        puppet.module_path = "vagrant/modules"
        # set puppet options
        puppet.options = [
                        '--verbose',
                        '--debug'
                      ]
    end

end
