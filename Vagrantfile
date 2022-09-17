Vagrant.configure("2") do |config|
  config.hostmanager.enabled = true 
  config.hostmanager.manage_host = true
  config.vm.boot_timeout = 900

  config.vm.define "ansible-for-vm" do |ctfrontend|
    ctfrontend.vm.box = "geerlingguy/debian11"
	ctfrontend.vm.hostname = "ansible-for-vm"
    ctfrontend.vm.network "private_network", ip: "192.168.56.10"
	ctfrontend.vm.provider "virtualbox" do |vb|
     vb.memory = "1024"
	 vb.cpus = "2"
     vb.name = "ansible-for-vm"
	end
	backend.vm.provision "shell", path: "userdata/ansible-setup.sh"
  end

  config.vm.define "grafana-metrics" do |ctfrontend|
    ctfrontend.vm.box = "geerlingguy/ubuntu2004"
	ctfrontend.vm.hostname = "ctfrontend"
    ctfrontend.vm.network "private_network", ip: "192.168.56.11"
	ctfrontend.vm.provider "virtualbox" do |vb|
     vb.memory = "2048"
	 vb.cpus = "2"
     vb.name = "grafana-metrics"
	end
  end

  config.vm.define "elk-agent-metrics" do |build|
	build.vm.box = "geerlingguy/ubuntu2004"
    build.vm.hostname = "elk-agent-metrics"
	build.vm.network "private_network", ip: "192.168.56.12"
	build.vm.provider "virtualbox" do |vb|
		vb.memory = "4096"
		vb.name = "elk-agent-metrics"
		vb.cpus = "4"
	end
  end

  config.vm.define "some-backend" do |backend|
	backend.vm.box = "geerlingguy/centos7"
    backend.vm.hostname = "some-backend"
	backend.vm.network "private_network", ip: "192.168.56.13"
	backend.vm.provider "virtualbox" do |vb|
		vb.memory = "1024"
		vb.name = "some-backend"
		vb.cpus = "2"
	end
	backend.vm.provision "shell", path: "userdata/backend-stack.sh"
  end


end
