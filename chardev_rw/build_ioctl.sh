#/bin/sh
# сборка пользовательского приложения
gcc -o ioctl ioctl.c
# создание файла устройства
mknod char_dev c 100 0