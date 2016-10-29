#########################################################################
# File Name: person_regist.sh
# Author: sqf
# mail: 18722358342@163.com
# Created Time: Fri 28 Oct 2016 06:10:28 PM EDT
#########################################################################
#!/bin/bash

for((i;i<100;i++))
do
	MYSQL=`which mysql` 	#取得mysql连接的基本信息。
	name=`date +%s%N | md5sum | head -c 4`
	age=20+${i}
	order=106+${i}
	let tmp=i%2	#let后面直接写运算表达式就ok了
	
	if [ ${tmp} -eq 0 ] #需要注意的是-eq为数字比较，=号位字符比较
	then
		sex="nan"	

	else [ ${tmp}!=0 ]
		sex="nv"	
	fi

	$MYSQL test -u sqf<<!
	insert into person_regist values('${i}','${name}','${sex}',30,'${name}','${name}','${name}');
!
done
