#!/bin/sh

##############################################
#
# 获取进程的各线程CPU占用情况,类似 top -Hp
#
##############################################

utime=""
ctime=""

pid=$1
procpath="/proc/$pid/task"
filelist=$(ls -la $procpath | awk '{if(NR>2) print $NF}')

for i in $filelist
do
	[ -e $procpath/$i ] && cd $procpath/$i || break

	if [ -e $procpath/$i/stat ]; then
		uctime=$(cat $procpath/$i/stat | awk '{print $14+$15}')
		#utime=$(uctime%=*)
		#ctime=$(uctime#*=)
		echo "thread:$i, cputime:$uctime"
	fi
done




