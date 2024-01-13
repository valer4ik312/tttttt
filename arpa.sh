#!/bin/bash

# Скрипт для вывода ARP-таблицы в Linux

# Проверка наличия утилиты arp
if ! command -v arp &> /dev/null; then
    echo "Утилита arp не установлена. Установите ее перед использованием скрипта."
    exit 1
fi

# Функция для вывода ARP-таблицы
show_arp_table() {
    echo "ARP-таблица:"
    arp -a
}

# Вызов функции
show_arp_table
