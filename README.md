vagrant_zeromq_php
==================

Vagrantfile and puppet recipes to create an Ubuntu 12.04 VM with ZeroMQ and its PHP bindings

Pre-requisites
--------------

* VirtualBox and Vagrant (more info. at http://www.vagrantup.com/)

* The 'precise64' Vagrant box. If you don't have it already, you should be able to install it like this;

    vagrant box add precise64 http://files.vagrantup.com/precise64.box

Installation
------------

    $ git clone git://github.com/digitalronin/vagrant_zeromq_php.git

    $ cd vagrant_zeromq_php

    $ vagrant up   # <--- setup the vm and install all software via puppet

    $ vagrant ssh  # <--- ssh onto the vm

    $ vagrant halt # <--- shutdown the vm

    $ vagrant destroy # <--- destroy the vm

Any files you create in the vagrant_zeromq_php directory will be accessible on the vm in the /vagrant directory.
