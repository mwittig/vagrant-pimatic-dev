#!/usr/bin/env bash

## Install node.js
sudo apt-get update
sudo apt-get install -y curl
curl -sL https://deb.nodesource.com/setup | sudo bash -
sudo apt-get install -y nodejs build-essential

## Install pimatic development
sudo chmod 777 /vagrant/
cd /vagrant/
mkdir pimatic-dev
npm install pimatic --prefix pimatic-dev

cd pimatic-dev
cp ./node_modules/pimatic/config_default.json ./config.json