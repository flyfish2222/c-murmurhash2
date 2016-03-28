#include <stdio.h>
#include <stdint.h>
#include "MurmurHash2.h"

int main() {

    printf("Hello, world\n");

    const char* key = "Hello, world";
    int len = 16;
    uint32_t seed = 5555;

    uint32_t hash = MurmurHash2(key, len, seed);

    printf("==> Seed: %u\n", hash);

    return 0;
}
