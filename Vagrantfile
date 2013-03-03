require "vagrant-ansible"

Vagrant::Config.run do |config|
  config.vm.box = "devel"
  config.vm.host_name = "devel.box"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  config.vm.forward_port 3000, 8080
  config.vm.forward_port 5000, 8081

  config.vm.network :hostonly, "172.16.0.8"

  config.vm.customize ["modifyvm", :id, "--memory", "1024"]
  config.vm.customize ["modifyvm", :id, "--cpus", "4"]

  config.ssh.forward_x11 = true

  config.vbguest.auto_update = true

  config.vm.provision :ansible do |ansible|
    ansible.playbook = "ansible/setup.yml"

    # required by vagrant-ansible -- must match setup.yml's hosts value
    ansible.hosts = "devel"
  end
end
