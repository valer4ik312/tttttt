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

# Проверка переданных аргументов
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <ip_address>"
    exit 1
fi

# Использование функции для проверки портов с 0 по 254 на указанном IP-адресе
ip_address="$1"
for i in {0..254}; do
    check_telnet "$ip_address" "$i"
done

