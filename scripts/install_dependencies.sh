#!/bin/bash
source /home/ec2-user/.bash_profile
# update yum just in case
npm init -y
# install node and npm in one line
npm install -y express
# install pm2 to restart node app
npm i -g pm2@latest