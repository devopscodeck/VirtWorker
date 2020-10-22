Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"


  config.vm.define "worker" do |worker|
    worker.vm.network "public_network", ip: "192.168.0.45"

    config.vm.provider "virtualbox" do |vb|
      vb.name = "Working"
      vb.gui = true
      vb.memory = 8096
      vb.cpus = 2
      vb.customize ["modifyvm", :id, "--audioout", "on"]
      vb.customize ["modifyvm", :id, "--audioin", "on"]
    end
  end
end