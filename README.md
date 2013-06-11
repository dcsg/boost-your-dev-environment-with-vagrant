## Boost your dev environment with **Vagrant**

This repository contains the source code of the exampls of my talk **Boost your dev environment with Vagrant**

It is divide in 5 steps. Each step have his branch.

#### Setps:

* [Step One](https://github.com/danielcsgomes/boost-your-dev-environment-with-vagrant/tree/step-one) - How to initialize Vagrant
* [Step Two](https://github.com/danielcsgomes/boost-your-dev-environment-with-vagrant/tree/step-two) - Example of a Vagrant file with port forwarding, private network and shared folder with nfs
* [Step Three](https://github.com/danielcsgomes/boost-your-dev-environment-with-vagrant/tree/step-three) - Example of Virtual Box provider configuration in Vagrantfile
* [Step Four](https://github.com/danielcsgomes/boost-your-dev-environment-with-vagrant/tree/step-four) - Example configuration of the Puppet provision in Vagrantfile and an example of a puppet manifest
* [Step Five](https://github.com/danielcsgomes/boost-your-dev-environment-with-vagrant/tree/step-five) - Real world example (LAMP configuration)

#### How to use

###### From step 1 to 4

Just run `vagrant up`

##### On step five

* Run `vagrant up`
* open browser: `http://localhost:8080` and you should see three names if everything was ok
* open browser: `http://localhost:8080/phpinfo.php` to view phpinfo

