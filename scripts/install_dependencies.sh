#!/bin/bash
# update yum just in case
yum update -y
# get node into yum
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
. ~/.nvm/nvm.sh
nvm install node
node -e "console.log('Running Node.js ' + process.version)"
npm init -y
# install node and npm in one line
npm install -y express
# install pm2 to restart node app
npm i -g pm2