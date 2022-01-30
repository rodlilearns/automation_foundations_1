#!/bin/bash
echo "Type your rhsm username"
read rhsm_username
echo "Type your rhsm password"
read -s rhsm_password
echo "Type your pool id"
read pool_id
sudo subscription-manager register --username=$rhsm_username --password=$rhsm_password
sudo subscription-manager attach --pool=$pool_id
sudo subscription-manager repos --enable=rhel-8-for-x86_64-baseos-rpms --enable=rhel-8-for-x86_64-appstream-rpms --enable=ansible-automation-platform-2.1-for-rhel-8-x86_64-rpms
sudo dnf install -y ansible