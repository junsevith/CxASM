#include <stdio.h>
#include "functions.h"

int main() {
    printf("Result 1: %f\n", fn1(2.0, (float) 1.0, 3.0, 4));
    printf("Result 2: %f\n", flog(4.0, 64));
    printf("Result 3: %f\n", fexp(2.0, 5));
    printf("Result 4: %f\n", froot((float) 1024.0,5));
    return 0;
}
