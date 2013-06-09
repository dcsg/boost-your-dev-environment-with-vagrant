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

end
