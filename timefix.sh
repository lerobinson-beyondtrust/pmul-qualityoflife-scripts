#!/bin/bash
sed -i '3s/.*/server dc01.bt.lab iburst/' chrony.conf
sed -i '4,6d' /etc/chrony.conf
systemctl restart chronyd
chronyc sources
