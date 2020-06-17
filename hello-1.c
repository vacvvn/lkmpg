/*
* hello-1.c - Простейший модуль ядра.
*/
#include <linux/module.h> /* Необходим для любого модуля ядра */
#include <linux/kernel.h> /* Здесь находится определение KERN_ALERT */
int init_module(void)
{
    printk("<1>Hello world 1.\n");
    /*
* Если вернуть ненулевое значение, то это
* будет воспринято как признак ошибки,
* возникшей в процессе работы init_module;
* в результате модуль не будет загружен.
*/
    return 0;
}
void cleanup_module(void)
{
    printk(KERN_ALERT "Goodbye world 1.\n");
}