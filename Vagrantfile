require 'pathname'

BASE_DIR = Pathname(File.dirname(__FILE__))

Vagrant.configure("2") do |config|
  config.vm.box = "devel"
  config.vm.hostname = "devel.box"
  config.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/raring/current/raring-server-cloudimg-amd64-vagrant-disk1.box"

  config.vm.network :forwarded_port, :guest => 3000, :host => 3000
  config.vm.network :forwarded_port, :guest => 5000, :host => 5000

  config.vm.network :private_network, :ip => "172.16.0.8"

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "1024"]
    vb.customize ["modifyvm", :id, "--cpus", "4"]
  end

  config.ssh.forward_x11 = true

  config.vm.provision :ansible do |ansible|
    ansible.playbook = BASE_DIR.join("ansible/setup.yml").to_s
    # required by vagrant-ansible -- must match setup.yml's hosts value
    ansible.inventory_file = BASE_DIR.join("ansible/hosts").to_s
  end
end
