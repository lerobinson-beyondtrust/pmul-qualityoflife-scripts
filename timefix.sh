#!/bin/bash
testset=$(grep 'bt.lab' /etc/chrony.conf)
if [ -z "$testset" ]
then 
  sed -i '3s/.*/server dc01.bt.lab iburst/' /etc/chrony.conf
  sed -i '4,6d' /etc/chrony.conf
  echo 'maxdistance 100' >> /etc/chrony.conf
  systemctl restart chronyd
  chronyc makestep
fi
echo 'run `chronyc sources` to check the timeserver is set to dc01.bt.lab'
