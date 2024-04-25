#!/bin/bash
for i in {1..10}
do
time="$(date +'%H:%M:%S')"
process="$(ps -ef | wc -l)"
echo "$time $process"
#sleep 5
done
cat /proc/cpuinfo > cpu_info.txt
os_info=$(cat /etc/os-release)
os_name=$(echo "$os_info" | grep NAME= | awk -F'='{print $2}')
echo $os_name > os_name.txt
new_os_name=${echo "$os_name" | awk '{print $2}')
echo $new_os_name > new_os_name.txt
for i in {50..100}
do
touch "${i}.txt
done

