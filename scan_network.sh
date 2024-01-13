#!/bin/bash

target_ip="192.168.15.13"  # Замените этот адрес на ваш целевой IP
start_port=1
end_port=100

for port in $(seq $start_port $end_port); do
  (nc -z -w 1 $target_ip $port) >/dev/null 2>&1 && echo "Host: $target_ip, Port: $port is open"
done

