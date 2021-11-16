#!/bin/sh

#zapisanie obecnej daty w zmiennej data
data=$(date '+%Y-%m-%d %H:%M:%S')
#wpisanie zmiennej data do pliku info.log
echo Data stworzenia: ${data} > /logi/info.log
#zapisanie ilosci uzytych bitow pamieci do zmiennej pamiec
pamiec=$(cat /sys/fs/cgroup/memory/memory.usage_in_bytes)
#dodanie jako kolejnej linijki do pliku info.log ilosc uzytych bajtow
echo Dostepna pamiec: ${pamiec} bajtow >> /logi/info.log
