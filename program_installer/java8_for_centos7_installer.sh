#!/bin/bash

# install java8 on centos7.

cd /opt

if [ -f "jdk-8u45-linux-x64.rpm" ];then 
	echo -e "\033[33m Jdk package already exist. I will remove it for you. \033[0m"
	rm jdk-8u45-linux-x64.rpm
fi

#echo 'download java rpm'
echo -e "\033[32m Ready to  download java rpm  \033[0m"

wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u45-b14/jdk-8u45-linux-x64.rpm"

#echo 'downloaded. begin to install'
echo -e "\033[32m Downloaded. Begin to install  \033[0m"

rpm -ivh jdk-8u45-linux-x64.rpm

java -version
if [ "$?" = "0" ]; then
	#echo 'install java successfully.'
	echo -e "\033[32m Install java successfully.  \033[0m"
else
	#echo 'install java failed'
	echo -e "\033[31m Install java failed.  \033[0m"
fi


