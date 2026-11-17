#!/bin/sh
awk '
/^MemTotal:/     {t=$2}
/^MemAvailable:/ {a=$2}
/^SwapTotal:/    {st=$2}
/^SwapFree:/     {sf=$2}
END {
    u=(t-a)/1024; tot=t/1024; sw=(st-sf)/1024
    printf "{\"text\":\"%dMB\",\"tooltip\":\"%d MB / %d MB  ·  swap %d MB\",\"percentage\":%d}\n", u, u, tot, sw, (t-a)*100/t
}' /proc/meminfo
