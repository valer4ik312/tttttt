#!/bin/bash

check_telnet() {
    ip=$1
    port=$2

    # Пытаемся подключиться к указанному хосту и порту
    if timeout 1s telnet "$ip" "$port" > /dev/null 2>&1; then
        # Если успешно подключились, порт открыт
        echo "Port $port on $ip OPEN."
    else
        # Если не удалось подключиться, порт закрыт
        echo "Port $port on $ip CLOSED."
    fi
}

# Пример использования функции для проверки портов с 0 по 254 на 192.168.15.13
for i in {0..254}; do
    check_telnet "192.168.15.13" "$i"
done
