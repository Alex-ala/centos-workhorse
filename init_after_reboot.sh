#!/bin/bash
DIR=$1
sudo yum clean expire-cache
sudo yum udpate -y
echo ${DIR}
cd ${DIR}
cp dotfiles/.bashrc ~/.bashrc
ansible-playbook -i inventory local_inventory.yml playbooks/INIT.yml --extra-vars "user=$(whoami)"
