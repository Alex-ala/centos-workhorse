#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

if [[ $(/bin/id -u) -ne 0 ]]; then
    echo "Please execute this script with sudo"
    exit 1
fi

yum update -y
yum install ansible yum-utils
package-cleanup --oldkernels --count=2
echo "$SUDO_USER     ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/${SUDO_USER}
echo "sh $DIR/init_after_reboot.sh $DIR" >> /home/${SUDO_USER}/.bashrc
reboot
