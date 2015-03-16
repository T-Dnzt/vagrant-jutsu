#!/bin/bash --login

cd /vagrant

sudo -E apt-get install git
sudo -E apt-get install libsqlite3-dev
sudo -E apt-get install nodejs

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable
source /usr/local/rvm/scripts/rvm

rvm requirements
rvm install 2.2.0

bundle install

echo "cd /vagrant" >> /home/vagrant/.bashrc