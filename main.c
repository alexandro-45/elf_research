#include <stdio.h>
extern _exit(int code);
int _start() {
    printf("ELF test\n");
    _exit(123);
}
