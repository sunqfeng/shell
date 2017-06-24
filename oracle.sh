##################################################
# 这是个oracle连接shell脚本
# 第一次加注释
# sqf :2017年6月24日22:10:00
#
#
#################################################

sqlplus -s lifepro/oracle@10.31.17.86/upbs<<EOF

	set timing off; 
	set trimout on;
	set trimspool on;
	set heading on; 
	set linesize 500; 
	set pagesize 0;
	set termout on;

	select *from dual;

EOF
