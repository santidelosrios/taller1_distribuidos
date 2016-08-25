# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
	#config.vm.define :centos_balance do |node|
    #node.vm.box = "centos_2016"
    #node.vm.network :private_network, ip: "192.168.56.101"
    #node.vm.network "public_network", :bridge => "eth1", ip:"192.168.131.171", :auto_config => "false", :netmask => "255.255.255.0"
    #node.vm.provider :virtualbox do |vb|
    #  vb.customize ["modifyvm", :id, "--memory", "1024","--cpus", "4", "--name", "centos_balance" ]
    #end
    #config.vm.provision :chef_solo do |chef|
    #	chef.cookbooks_path = "cookbooks"
    #	chef.add_recipe "mirror"
    #    chef.add_recipe "mysql"
    #	chef.json = {"aptmirror" => {"server" => "192.168.131.254"}}
    #end
  #end
  config.vm.define :centos_web_one do |node|
    node.vm.box = "centos_2016"
    node.vm.network :private_network, ip: "192.168.56.102"
    node.vm.network "public_network", :bridge => "eth1", ip:"192.168.131.172", :auto_config => "false", :netmask => "255.255.255.0"
    node.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--memory", "1024","--cpus", "4", "--name", "centos_web_one" ]
    end
    config.vm.provision :chef_solo do |chef|
    	chef.cookbooks_path = "cookbooks"
    	chef.add_recipe "mirror"
        chef.add_recipe "apache"
    	chef.json = {"aptmirror" => {"server" => "192.168.131.254"}}
    end
  end
  config.vm.define :centos_web_two do |node|
    node.vm.box = "centos_2016"
    node.vm.network :private_network, ip: "192.168.56.103"
    node.vm.network "public_network", :bridge => "eth1", ip:"192.168.131.173", :auto_config => "false", :netmask => "255.255.255.0"
    node.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--memory", "1024","--cpus", "4", "--name", "centos_web_two" ]
    end
    config.vm.provision :chef_solo do |chef|
    	chef.cookbooks_path = "cookbooks"
    	chef.add_recipe "mirror"
        chef.add_recipe "mysql"
    	chef.json = {"aptmirror" => {"server" => "192.168.131.254"}}
    end
  end
    config.vm.define :centos_database do |node|
    node.vm.box = "centos_2016"
    node.vm.network :private_network, ip: "192.168.56.104"
    node.vm.network "public_network", :bridge => "eth1", ip:"192.168.131.174", :auto_config => "false", :netmask => "255.255.255.0"
    node.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--memory", "1024","--cpus", "4", "--name", "centos_database" ]
    end
    config.vm.provision :chef_solo do |chef|
    	chef.cookbooks_path = "cookbooks"
    	#chef.add_recipe "mirror"
        chef.add_recipe "postgres"
    	chef.json = {"aptmirror" => {"server" => "192.168.131.254"}}
    end
  end
end