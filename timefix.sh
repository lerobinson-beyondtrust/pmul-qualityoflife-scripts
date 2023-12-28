#!/bin/bash
sed -i '3s/.*/server dc01.bt.lab iburst/' /etc/chrony.conf
sed -i '4,6d' /etc/chrony.conf
systemctl restart chronyd
echo 'run `chronyc sources` to check the timeserver is set to dc01.bt.lab'
