#!/bin/bash
USER="Dmytro"
echo "$(date)"
echo "Hello, $USER!"
echo "Dir: $(pwd)"
total_processes=$(ps aux | wc -l)
total_processes=$((total_processes - 1))
echo "full processed: $total_processes"
bioset_processes=$(ps aux | grep -c '[b]ioset')
echo "Full bioset: $bioset_processes"
file_permissions=$(ls -l /etc/passwd | awk '{print $1}')
echo "permissions /etc/passwd: $file_permissions"

