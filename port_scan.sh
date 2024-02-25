#!/bin/bash
# Скрипт для простого сканирования откритих портов

# Проверка наличия аргумента
if [ -z "$1" ]; then
    echo "Usage: $0 <target_ip>"
    exit 1
fi

target_ip="$1"
start_port=1
end_port=9000

for port in $(seq $start_port $end_port); do
    (nc -z -w 1 $target_ip $port) >/dev/null 2>&1 && echo "Host: $target_ip, Port: $port is open"
done

