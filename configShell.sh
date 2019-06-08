#! /bin/bash
rm -rf /etc/localtime
ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
apt-get update
apt-get install ntp ntpdate -y
