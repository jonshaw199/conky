#!/bin/bash

df -h | grep '^/dev' | while read DEVICE SIZE USED FREE PERCENT MOUNT
do
	echo "\${color2}$MOUNT\${alignr}$DEVICE"
	echo " Used: \${color1}$USED\${goto 200}$PERCENT\${alignr}\${color2}Free: \${color1}$FREE"
	echo " \${color1}\${fs_bar $MOUNT}"
done
