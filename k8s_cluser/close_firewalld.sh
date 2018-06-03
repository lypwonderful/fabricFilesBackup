#!/bin/bash

# close firewalld
function close_firewalld()
{
	# stop 
	systemctl stop firewalld > /dev/null
	
	# disable
	systemctl disable firewalld > /dev/null
	
	# check status
	f_status=`systemctl status firewalld | grep Active | awk -F ' ' '{print $3}'`	
	if [[ $f_status != '(dead)' ]];then
		echo -e "firewalld is not dead but:$f_status"
		exit 255
	fi
	echo -e "stop firewalld succ."

}
close_firewalld
