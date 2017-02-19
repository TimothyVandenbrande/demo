# add virtualbox repo
echo "deb http://download.virtualbox.org/virtualbox/debian `lsb_release -c -s` contrib" >> /etc/apt/sources.list;

# install it
sudo apt-get update
sudo apt-get install virtualbox-5.1 dkms -y
