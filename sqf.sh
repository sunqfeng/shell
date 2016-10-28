while true
do


#画界面author:孙奇峰 
clear
i=3
echo -ne "\033[2;26H__________________________________________________________________________"
echo -ne "\033[5;25H___________________________________________________________________________"
echo -ne "\033[22;25H __________________________________________________________________________"
while [[ $i -le 22 ]]
do
echo -ne "\033[$i;25H|"
echo -ne "\033[$i;100H|"
let i=i+1
done
echo -ne "\033[20;25H __________________________________________________________________________"


#动态时间显示author:孙奇峰
(while true 
 do
 tput civis
 tput cup 20 92 
 sqf_nyr=`date '+%Y-%m-%d'`
 sqf_sfm=`date '+%H:%M:%S'`
 echo -ne "\033[3;84H时间:${sqf_nyr}"
 echo -ne "\033[4;89H${sqf_sfm}"
 tput cup 20 92 
 tput cnorm
 sleep 1
 done
 )&
#选项显示
echo -ne "\033[4;46Hxxxxxxxxxxxxxxxxxxxxxxx"


echo -ne "\033[8;50Hxxxxxxxxxxxxxxxxxxxx"


echo -ne "\033[10;50Hxxxxxxxxxxxxxxxxxxxxx"


echo -ne "\033[12;50Hxxxxxxxxxxxxxxxxxxxxxxx"


echo -ne "\033[14;50Hxxxxxxxxxxxxxxxxxxxxxxxxxx"


echo -ne "\033[16;50Hxxxxxxxxxxxxxxxxxxxxxxxxxxx"


echo -ne "\033[18;50H0_退 出 脚  本"


echo -ne "\033[21;85H请选择:[ ]\b\b\c"
read sel 
kill -19 %%
case $sel in
0)
clear
break
;;
1)
echo -ne "\033[21;29H程序开始运行"
sh ./hello.sh
echo -ne "\033[21;29H程序运行完毕，按[Enter]键继续..."
read con
continue
;;
2)
sh ./hello1.sh
echo -ne "\033[21;29H程序运行完毕，按[Enter]键继续..."
read con 
continue
;;
3)
if [ $? -ne 0 ];then
echo -ne "\033[21;29Hplease run other progress......."
else
echo -ne "\033[21;29H程序运行完毕，按[Enter]键继续..."
fi
read con 
continue
;;
4)




if [ $? -ne 0 ];then
echo -ne "\033[21;29Hplease run other progress......." 
else
echo -ne "\033[21;29Hxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
fi
read con 
continue
;;
5)
read con 
continue
;;
*)
echo -ne "\033[21;29H非法选项，请重新选择，按[Enter]键继续..."
read con 
continue
;;
esac
done
clear
