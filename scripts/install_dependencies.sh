#!/bin/bash
# update yum just in case
source /home/ec2-user/.bash_profile
yum update -y
# get node into yum
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
. ~/.nvm/nvm.sh
nvm install node
node -e "console.log('Running Node.js ' + process.version)"
cd home/ec2-user/counter
sudo yum init -y
yum install -y express
# install pm2 to restart node app
npm install pm2@latest -g
pm2 update