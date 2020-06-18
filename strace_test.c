/*
gcc -Wall -o strace_test strace_test.c и запустите ее командой "strace ./strace_test". 
*/
#include <stdio.h>
int main(void)
{
printf("hello");
return 0;
}