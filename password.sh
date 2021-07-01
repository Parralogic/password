#!/bin/bash
#Creator: David Parra-Sandoval
#Date: 07/01/2021
#Last Modified: 07/01/2021
clear

case $1 in
-h | --help) cat << EOF
This script is just a concept, it can be placed at the beginning of a script
to password protect it; that will auto alternate its password.
WARNING!: Use at your own risk!
EOF
exit 1;;
*) echo *Proof of Concept*;;
esac

#######Copy-paste bottom to the beginning of a script for password protection###########
while true; do
read -sp "Password: " PASSWD
if [[ ${PASSWD} = tcp65535 ]]; then
echo "Successful!"
break
elif [[ ${PASSWD} = * ]]; then
echo "Incorrect! Press Ctrl+c to exit!"
fi
done
sed -i 's/tcp/tcp/' $0
sleep 6
sed -i 's/tcp/udp/' $0
########################################################################################




