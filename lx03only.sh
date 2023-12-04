#!/bin/bash
curl -l /var/lib/CentOS-7-x86_64-DVD-2003.iso  -O https://mirror.nsc.liu.se/centos-store/7.8.2003/isos/x86_64/CentOS-7-x86_64-DVD-2003.iso
cat << EOF > /etc/yum.repos.d/iso.repo
[iso]
name=iso
baseurl=file:///opt/shared/CentOS
gpgcheck=0
EOF
yum clean all
yum  --disablerepo=updates --disablerepo=base --disablerepo=extras  install yum-utils nano vim -y
yum-config-manager --disable base --disable extras --disable updates
