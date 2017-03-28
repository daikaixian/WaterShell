#!/bin/bash

# install java8 on centos7.

cd /opt

#echo 'download java rpm'
echo -e "\033[32m download java rpm  \033[0m"

wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u45-b14/jdk-8u45-linux-x64.rpm"

#echo 'downloaded. begin to install'
echo -e "\033[32m downloaded. begin to install  \033[0m"

rpm -ivh jdk-8u45-linux-x64.rpm

java -version
if [ "$?" = "0" ]; then
	#echo 'install java successfully.'
	echo -e "\033[32m install java successfully.  \033[0m"
else
	#echo 'install java failed'
	echo -e "\033[31m install java failed.  \033[0m"
fi


