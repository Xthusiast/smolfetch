#!/bin/bash
echo "
 $USER@$HOSTNAME
os     $(sed -n 's/^PRETTY_NAME="//p' /etc/os-release | cut -f1 -d'"')
kernel $(uname -r)
shell  $SHELL
$(uptime -p)
"
