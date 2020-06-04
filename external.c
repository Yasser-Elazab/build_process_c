#include <stdio.h>
#include "external.h"

unsigned long long EXTERNAL_u64Pow2(unsigned long num)
{
    return ((long long)(num * num));
}