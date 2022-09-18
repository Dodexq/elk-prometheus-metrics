Vagrant.configure("2") do |config|
  config.hostmanager.enabled = true 
  config.hostmanager.manage_host = true
  config.vm.boot_timeout = 900

  config.vm.define "ansible-for-vm" do |ansible|
    ansible.vm.box = "geerlingguy/ubuntu2004"
	ansible.vm.hostname = "ansible-for-vm"
    ansible.vm.network "private_network", ip: "192.168.56.10"
	ansible.vm.provider "virtualbox" do |vb|
    	vb.memory = "1024"
		vb.cpus = "2"
    	vb.name = "ansible-for-vm"
	end
	ansible.vm.provision "shell", path: "userdata/ansible-setup.sh"
  end

  config.vm.define "grafana-metrics" do |grafana|
    grafana.vm.box = "geerlingguy/ubuntu2004"
	grafana.vm.hostname = "grafana-metrics"
    grafana.vm.network "private_network", ip: "192.168.56.11"
	grafana.vm.provider "virtualbox" do |vb|
		vb.memory = "1024"
		vb.cpus = "2"
    	vb.name = "grafana-metrics"
	grafana.vm.provision "shell", path: "userdata/grafana-metrics.sh"
	end
  end

  config.vm.define "elk-agent-metrics" do |elkagent|
	elkagent.vm.box = "geerlingguy/ubuntu2004"
    elkagent.vm.hostname = "elk-agent-metrics"
	elkagent.vm.network "private_network", ip: "192.168.56.12"
	elkagent.vm.provider "virtualbox" do |vb|
		vb.memory = "5120"
		vb.name = "elk-agent-metrics"
		vb.cpus = "4"
	elkagent.vm.provision "shell", path: "userdata/elk-agent-metrics.sh"
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
