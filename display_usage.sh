#!/bin/bash
free -m | awk 'NR==2 {printf "Memory Usage: %d/%dMB (%.1f%%)\n",$3,$2,100*$3/$2}' 
df -m | grep "/dev/root" | awk '{printf "Disk Usage: %d/%dMB (%g%%)\n",$3,$2,$5}'
