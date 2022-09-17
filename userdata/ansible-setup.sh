#!/bin/bash
sudo apt update -y

# Ansible
sudo apt install software-properties-common -y
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible -y

# Docker + Docker Compose
wget -O - https://get.docker.com | bash

