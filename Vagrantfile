# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define "team1" do |team1|
    team1.vm.box = "centos/7"
    team1.vm.hostname = "team1-server"
    team1.vm.network "private_network", ip: "192.168.33.10"
    team1.vm.network :forwarded_port, guest: 22, host: 10122, id: "ssh"
    team1.vm.provision :shell, path: "java.sh"
  end

  config.vm.define "team2" do |team2|
    team2.vm.box = "centos/7"
    team2.vm.hostname = "team2-server"
    team2.vm.network "private_network", ip: "192.168.33.11"
    team2.vm.network :forwarded_port, guest: 22, host: 10222, id: "ssh"
  end
end
