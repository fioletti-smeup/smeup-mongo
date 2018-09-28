#!/bin/bash

yum -y install cloud-init

sed -i 's/centos/ec2-user/g' /etc/cloud/cloud.cfg
