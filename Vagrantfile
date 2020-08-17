Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"

  config.vm.define "worker" do |worker|
    worker.vm.network "public_network", ip: "192.168.0.45"
   
# Os comandos abaixo Adicionam os pacotes básicos do gnome e instala a interface do xfce4.
  worker.vm.provision "shell",
    inline: "sudo cp /vagrant/installxfce4.sh /usr/bin/ && \
             /usr/bin/installxfce4.sh"
  end
#  o pacote gnome-app-install não foi instalado acima, porém a interface roda com sucesso


  config.vm.provider "virtualbox" do |vb|
    vb.name = "Working"
    vb.gui = true
    vb.memory = 8096
    vb.cpus = 2
    vb.customize ["modifyvm", :id, "--audioout", "on"]
    vb.customize ["modifyvm", :id, "--audioin", "on"]
  end

 end

# sudo apt install xfce4-session -y && sudo apt install xinit -y


  # work.vm.provider "virtualbox" do |vb|
  #   vb.name = "Working"
  #   vb.gui = true
  #   vb.memory = 4096
  #   vb.cpus = 2
  # work.vm.network "public_network"
  #   #  phpweb.vm.network "forwarded_port", guest: 8888, host: 8888
  #