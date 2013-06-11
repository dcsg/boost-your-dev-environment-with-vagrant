# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

    config.vm.box = "precise64"
    config.vm.box_url = "http://files.vagrantup.com/precise64.box"

    # port forwarding
    config.vm.network :forwarded_port, guest: 80, host: 8080, auto_correct: true
    config.vm.network :forwarded_port, guest: 3306, host: 50003, auto_correct: true

    # setup a private network with a static IP Address
    # nfs requires a static IP address
    config.vm.network :private_network, ip: "10.5.0.2"

    # sharing folders, only enables nfs on *unix OS
    config.vm.synced_folder ".", "/vagrant", :nfs => (RUBY_PLATFORM =~ /linux/ or RUBY_PLATFORM =~ /darwin/)

    config.vm.provider "virtualbox" do |vb|

        vb.name = "phplx" # custom VM name

        #vb.gui = true     # enables GUI, defaults is false

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
                        #'--debug'
                      ]
    end

end
