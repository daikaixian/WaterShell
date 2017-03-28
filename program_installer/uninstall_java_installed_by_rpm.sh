#!/bin/bash

# This shell can uninstall java from centos.
# But the shell will make sense only if the java was installed using rpm .
# See more detail here: https://www.java.com/en/download/help/linux_uninstall.xml#rpm

rpm -e `rpm -qa | grep jdk*`

if [ "$?" = "0" ];then
	echo -e "\033[32m Uninstall Successfully. \033[0m"
else
	echo -e "\033[31m Uninstall Failed. \033[0m"
fi




