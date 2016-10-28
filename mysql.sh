#########################################################################
# File Name: mysql.sh
# Author: sqf
# mail: 18722358342@163.com
# Created Time: Thu 20 Oct 2016 10:57:47 AM EDT
#########################################################################
#!/bin/bash

i=9;
#这是我在分支上添加的内容。
for((i;i<10000;i++))
do
	MYSQL=`which mysql`
	name=`date +%s%N | md5sum | head -c 4`
	age=20+${i};
	order=106+${i};
	$MYSQL test -u sqf<<!
	insert into person values(${i},'${name}',${age},${order});
!
done
