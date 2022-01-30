#!/bin/bash
read -p "Enter your rhsm username: " rhsm_username
read -sp "Enter your rhsm password: " rhsm_password
read -p "Enter your pool id: " pool_id
sudo subscription-manager register --username=$rhsm_username --password=$rhsm_password
sudo subscription-manager attach --pool=$pool_id
sudo subscription-manager repos --enable=rhel-8-for-x86_64-baseos-rpms --enable=rhel-8-for-x86_64-appstream-rpms --enable=ansible-automation-platform-2.1-for-rhel-8-x86_64-rpms
sudo dnf install -y ansible