#!/bin/bash

# get newest tested h5 code from p3.

result=`curl http://p3.thedoc.cn/ver.json`

#echo $result

#remove string before https
substr1=${result#*zipDownloadUrl\":}

#remove string after zip
substr2=${substr1%, \"version\"*}

#echo 'wget url:'
#echo $substr2

# remove older version.
rm FamilyDoctor2/resource/raw/matrix.zip

if [ "$?" = "0" ];then
	echo "remove success"
else
	echo "remove failed"
fi

# download and rename
wget substr2 -O FamilyDoctor2/resource/raw/matrix.zip
