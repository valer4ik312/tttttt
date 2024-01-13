#!/bin/bash

# Скрипт для простого сканирования сети без использования nmap

# Запрос у пользователя ввода IP-диапазона

# Разделение диапазона IP
start_ip=1
end_ip=255

# Функция для сканирования сети
scan_network() {
    for ((i=start_ip; i<=end_ip; i++)); do
        ip="192.168.1.$i"  # замените на ваш диапазон IP

        # Отправка 1 пакета ping
        ping -c 1 -w 1 $ip &> /dev/null

        # Проверка кода возврата
        if [ $? -eq 0 ]; then
            echo "Host $ip working!"
        else
            echo "Host $ip don't working."
        fi
    done
}

# Вызов функции для сканирования сети
scan_network
