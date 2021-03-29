#!/bin/bash
# sudo chmod 755 /var/www/server.js # optional
# this will restart app/server on instance reboot
crontab -l | { cat; echo "@reboot pm2 start /home/ec2-user/counter/scripts/server.js"; } | crontab -
sudo pm2 stop node-app
# actually start the server
sudo pm2 start /home/ec2-user/counter/scripts/server.js --name node-app
