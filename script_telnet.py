import socket

def check_telnet(ip, port):
    try:
        # Создаем объект сокета
        s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        # Устанавливаем таймаут соединения в 1 секунду
        s.settimeout(1)
        # Пытаемся подключиться к указанному хосту и порту
        s.connect((ip, port))
        # Если успешно подключились, порт открыт
        print(f"Port {port} on {ip} OPEN.")
    except socket.error:
        # Если не удалось подключиться, порт закрыт
        print(f"Port {port} on {ip} CLOSED.")
    finally:
        # Всегда закрываем сокет после использования
        s.close()

# Пример использования функции для проверки порта 80 на localhost
for i in range(0, 255):
	check_telnet("192.168.15.13", i)
