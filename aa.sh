#! /bin/bash
rm -rf /etc/localtime
ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
apt-get update
apt-get install ntp ntpdate -y
ZONE="Asia/Shanghai"UTC=falseARC=false
/usr/sbin/ntpdate -u cn.pool.ntp.org
hwclock -r
hwclock -w
/usr/sbin/ntpdate -u cn.pool.ntp.org> /dev/null 2>&1; /sbin/hwclock -w
00 10 * * * root /usr/sbin/ntpdate -u cn.pool.ntp.org > /dev/null 2>&1; /sbin/hwclock -w
