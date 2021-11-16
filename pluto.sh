#!/bin/sh

data=$(date '+%Y-%m-%d %H:%M:%S')
echo Data stworzenia: ${data} > /logi/info.log
pamiec=$(cat /sys/fs/cgroup/memory/memory.usage_in_bytes)
echo Dostepna pamiec: ${pamiec} bajtow >> /logi/info.log