Vagrant.configure("2") do |config|
  config.vm.box = "concourse/lite"

  config.vm.provider "virtualbox" do |v|
    v.name = 'vagrant|ott-concourse-ci'
    v.cpus = 2
    v.memory = 512
    v.customize ["modifyvm", :id, "--nictype1", "virtio"]
    v.customize ["modifyvm", :id, "--nictype2", "virtio"]
  end
end
