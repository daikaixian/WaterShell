#!/bin/bash

#Install binary-only gradle script.
#Java 7 or higher version needed.

#define colorful echo function
green_echo(){
	echo -e "\033[32m "$1"  \033[0m"	
}

red_echo(){
	echo -e "\033[31m "$1"  \033[0m"
}


gradle_version=2.11
# download zip
cd /tmp

if [ -f gradle-${gradle_version}-bin.zip ];then
	red_echo "gradle-${gradle_version}-bin.zip already exist."
else
	https_proxy=p.flypcy.xyz:31415 wget https://services.gradle.org/distributions/gradle-${gradle_version}-bin.zip
fi

#unzip
unzip gradle-${gradle_version}-bin.zip -d /opt/gradle

#export path
echo "export PATH=\$PATH:/opt/gradle/gradle-${gradle_version}/bin" >> ~/.bash_profile

source ~/.bash_profile
gradle -v

if [ "$?" = "0" ];then
	green_echo "Gradle-${gradle_version} installed successfully."
else
	red_echo "Gradle-${gradle_version} installed failed."
fi




