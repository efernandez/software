#!/bin/bash

sudo apt-get install nodejs nodejs-dev

# http://marvl.infotech.monash.edu/webcola/doc/index.html
OLD_PWD="$(pwd)"
mkdir -p ~/software/webcola
cd ~/software/webcola

sudo npm install -g grunt-cli
sudo npm install -g http-server
npm install grunt

cd node_modules/grunt
npm install

grunt

cd $OLD_PWD

echo "Run with:"
echo "http-server WebCola"

