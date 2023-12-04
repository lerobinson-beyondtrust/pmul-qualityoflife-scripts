#!/bin/bash
cat << EOF > /etc/yum.repos.d/iso.repo
[iso]
name=iso
baseurl=file:///mnt/win-share/CentOS
gpgcheck=0
EOF
yum clean all
yum  --disablerepo=updates --disablerepo=base --disablerepo=extras  install yum-utils nano vim -y
yum-config-manager --disable base --disable extras --disable updates
