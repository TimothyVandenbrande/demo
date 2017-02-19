# install kvm
sudo apt install libvirt-bin qemu-kvm -y

# add current user to the libvirt group
sudo usermod -a -G libvirtd `whoami`
newgrp libvirtd

# download and install the docker driver for kvm
sudo curl -L https://github.com/dhiltgen/docker-machine-kvm/releases/download/v0.7.0/docker-machine-driver-kvm -o /usr/local/bin/docker-machine-driver-kvm
sudo chmod +x /usr/local/bin/docker-machine-driver-kvm
