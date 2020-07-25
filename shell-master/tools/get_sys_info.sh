#!/bin/sh

############################################
#
# 获取内存使用率/CPU占用率/日志空间占用率
#
############################################

### Mem Usage
eval "$(cat /proc/meminfo | tr -d " ()" | sed 's/:/=/g' 2>/dev/null)"
MEMFREE=${MemFree%k*}
BUFFERS=${Buffers%k*}
CACHED=${Cached%k*}
TOTAL_MEM=${MemTotal%k*}
FREE_MEM=$(expr ${MEMFREE} + ${BUFFERS} + ${CACHED})
USED_MEM=$(expr $TOTAL_MEM - $FREE_MEM)
MEM_PERCENT_USED=$(($USED_MEM * 100 / ${TOTAL_MEM}))                                                                                                                            
#MEM_PERCENT_USED=$(expr 100 - $MEM_PERCENT_FREE)
echo "TOTALMEM:$TOTAL_MEM"
echo "USEDMEMPER:$MEM_PERCENT_USED"

### CPU Usage
if [ -e /tmp/cpurate ]; then
    test_rate=$(cat /tmp/cpurate 2>/dev/null)
    SYS_Rate=$(echo $test_rate |awk -F ' ' '{print $2}')
fi
if [ -z "$SYS_Rate" -o "$SYS_Rate" = 0 ]; then
    SYS_Rate=10
fi
echo "CPUSAGE:$SYS_Rate"

### Log Usage
LOGTOTAL=$(df -k|grep sda5 | awk '{print $2}')
LOGUSED=$(df -k|grep sda5 | awk '{print $3}')
LOG_PERCENT_USED=$(($LOGUSED * 100 / $LOGTOTAL))
echo "LOGUSAGE:$LOG_PERCENT_USED"
