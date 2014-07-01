## Boost your dev environment with **Vagrant**

This repository contains the source code of the exampls of my talk **Boost your dev environment with Vagrant**

It is divide in 5 steps. Each step have his branch.

[![endorse](https://api.coderwall.com/danielcsgomes/endorsecount.png)](https://coderwall.com/danielcsgomes)

#### Steps:

* [Step One](https://github.com/dcsg/boost-your-dev-environment-with-vagrant/tree/step-one) - How to initialize Vagrant
* [Step Two](https://github.com/dcsg/boost-your-dev-environment-with-vagrant/tree/step-two) - Example of a Vagrant file with port forwarding, private network and shared folder with nfs
* [Step Three](https://github.com/dcsg/boost-your-dev-environment-with-vagrant/tree/step-three) - Example of Virtual Box provider configuration in Vagrantfile
* [Step Four](https://github.com/dcsg/boost-your-dev-environment-with-vagrant/tree/step-four) - Example configuration of the Puppet provision in Vagrantfile and an example of a puppet manifest
* [Step Five](https://github.com/dcsg/boost-your-dev-environment-with-vagrant/tree/step-five) - Real world example (LAMP configuration)

## Slides

Slides of the presentation are available [here](https://joind.in/talk/view/8816)

## How to use

#### From step 1 to 4

Just run `vagrant up` or `vagrant reload` if the machine is already running

#### On step five

* Run `vagrant up` or `vagrant reload` if the machine is already running
* open browser: `http://localhost:8080` and you should see three names if everything was ok
* open browser: `http://localhost:8080/phpinfo.php` to view phpinfo

## LICENSE

Licensed under [MIT](https://github.com/dcsg/boost-your-dev-environment-with-vagrant/blob/step-one/LICENSE)
