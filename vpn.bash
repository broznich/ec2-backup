#!/bin/bash
resolv='nameserver 192.168.88.1\nnameserver 8.8.8.8\nnameserver 8.8.4.4\nsearch local'

echo -n "Username: "
read user
echo -n "Password: "
read pass

while true
do
    echo -e $resolv > /etc/resolv.conf
    echo $pass | openconnect vpn-ip.apsis.se -u $user
    sleep 5
done
