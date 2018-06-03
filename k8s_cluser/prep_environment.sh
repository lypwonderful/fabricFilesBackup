#!/bin/bash
function prep_environment()
{
	# use aliyun yum
	wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo > /dev/null

	# install epel-release
	yum -y install epel-release > /dev/null
}
