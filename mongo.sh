#!/bin/bash

cp /root/mongodb-org-4.0.repo /etc/yum.repos.d/mongodb-org-4.0.repo
sudo yum install -y mongodb-org

cp /root/mongod.conf /etc/mongod.conf

systemctl start mongod

mongo ./mongoAdminSetup.js

firewall-cmd --zone=public --change-interface=enp0s3 --permanent
firewall-cmd --zone=public --add-port=27017/tcp --permanent
