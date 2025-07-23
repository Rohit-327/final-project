#!/bin/bash
mkdir -p /home/ubuntu/.ssh
echo "${ssh_pub_key}" > /home/ubuntu/.ssh/authorized_keys
chown -R ubuntu:ubuntu /home/ubuntu/.ssh
chmod 600 /home/ubuntu/.ssh/authorized_keys
