#!/usr/bin/env bash

## Install node.js
sudo apt-get update
sudo apt-get install -y curl
curl -sL https://deb.nodesource.com/setup | sudo bash -
sudo apt-get install -y nodejs build-essential git

## Install pimatic development
sudo chmod 777 /vagrant/
cd /vagrant/
mkdir pimatic-dev
#npm install pimatic --prefix pimatic-dev
curl -s https://raw.githubusercontent.com/pimatic/pimatic/development/install/install-git | sudo bash /dev/stdin v0.9.x

## Copy the default config to the pimatic-dev folder
cd pimatic-dev
cp ./node_modules/pimatic/config_default.json ./config.json

## Install grunt, a Javascript task runner (see http://gruntjs.com)
sudo npm install -g grunt-cli