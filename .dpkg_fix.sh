#!/bin/bash
sudo lsof /var/lib/dpkg/lock
echo "ENTER THE PID"
read pid
sudo ps cax | grep $pid
sudo kill $pid
sudo rm /var/lib/dpkg/lock
sudo dpkg --configure -a
