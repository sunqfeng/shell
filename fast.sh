#!/usr/bash/
#############################################
# 功能：根据输入的序号，快速打开相应的文件 
# 例如：
#	1 -rw-r--r-- 1 test dba 240 Jun 26 16:11 sqf.sh.bak
#	2 -rw-r--r-- 1 test dba 513 Jun 26 17:25 sqf.sh
# 输入 1 就会打开sqf.sh.bak;输入 2 就会打开sqf.sh
#
#
############################################

i=0
content=`ls -lrt | while read line
do
	echo "${i} ${line}"
	let i=i+1;
done`

echo "${content}"

read -p "please input your num.USING(0:exit;!0:open file):" seq 

if [ $seq -eq 0 ]
then
	exit 0;
fi

file=`echo "${content}" | grep "^${seq}" | awk '{print $NF}'`

if [ "${file}Z" == "Z" ]
then
	echo "you file not exist!!"
	exit -1;
fi

vim $file

exit 0;
