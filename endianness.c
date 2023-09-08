#include <stdio.h>

int main(void) {
    unsigned int x = 0x76543210;
    char *c = (char*) &x;
    printf("this is the number %x\n", *c);
    if(*c == 0x10) printf("this is a little endian machine");
    else printf("this is a big endian machine");

    return 0;
}
