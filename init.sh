#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

if [[ $(/bin/id -u) -ne 0 ]]; then
    echo "Please execute this script with sudo"
    exit 1
fi

ssh-keygen -f /home/${SUDO_USER}/.ssh/id_rsa
cp /home/${SUDO_USER}/.ssh/id_rsa.pub /home/${SUDO_USER}/.ssh/authorized_keys
chown -R ${SUDO_USER}:${SUDO_USER} /home/${SUDO_USER}/.ssh/
chmod 600 /home/${SUDO_USER}/.ssh/authorized_keys
yum update -y
yum -y install ansible yum-utils
package-cleanup --oldkernels --count=2
echo "$SUDO_USER     ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/${SUDO_USER}
echo "sh $DIR/init_after_reboot.sh $DIR" >> /home/${SUDO_USER}/.bashrc
reboot
