#!/bin/bash
DIR=$1
sed -i "/init_after_reboot.sh/d" /home/$(whoami)/.bashrc
sudo yum clean expire-cache
sudo yum udpate -y
echo ${DIR}
cd ${DIR}
ansible-playbook -i local_inventory.yml playbooks/FULL.yml --extra-vars "user=$(whoami)"
