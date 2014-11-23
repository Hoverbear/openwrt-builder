Vagrant.configure("2") do |config|
  config.vm.box = "chef/debian-7.4"
  config.vm.box_check_update = true

  config.vm.provision "shell",
    path: "setup.sh",
    privileged: true
  config.vm.provision "shell",
    path: "build-router.sh",
    privileged: false
end
