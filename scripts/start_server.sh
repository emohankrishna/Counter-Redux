#!/bin/bash

# this will restart app/server on instance reboot
crontab -l | { cat; echo "@reboot pm2 start /home/ec2-user/counter/scripts/server.js"; } | crontab -
pm2 stop node-app
# actually start the server
pm2 start /home/ec2-user/counter/scripts/server.js --name node-app
