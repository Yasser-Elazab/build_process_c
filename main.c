#include <stdio.h>
#include <math.h>
#include "main.h"
#include "external.h"


unsigned char const MAIN_u8TestConstVar = 6;

/** start of test_code_1 **/
// int main(void)
// {
//     /*we shall not see this comment after the preprocessor operations are done*/
//     printf("hello world!, this is test code 1\n");
//     printf("this is the test number: %u\n", MAIN_u8TEST_MUM);
//     printf("and this is the const test number: %u\n", MAIN_u8TestConstVar);

//     return (0);
// }
/** end of test_code_1 **/

/** start of test_code_2 **/
// int main(void)
// {
//     /*we shall not see this comment after the preprocessor operations are done*/
//     printf("hello world!, this is test code 2\n");
//     printf("this is the test number: %u\n", MAIN_u8TEST_MUM);
//     printf("and this is the const test number suqared: %lu\n", EXTERNAL_u64Pow2(MAIN_u8TestConstVar));

//     return (0);
// }
/** end of test_code_2 **/

/** start of test_code_3 **/
int main(void)
{
    /*we shall not see this comment after the preprocessor operations are done*/
    printf("hello world!, this is test code 3\n");
#ifdef DEBUG
    printf("we are in debug mode folks!!\n");
#endif
    printf("this is the test number: %u,\n", MAIN_u8TEST_MUM);
    printf("this is the const test number suqared: %lu\n", EXTERNAL_u64Pow2(MAIN_u8TestConstVar));
    printf("and this is the const test number cubed: %lu\n", (unsigned long)pow(MAIN_u8TestConstVar, 3));

    return (0);
}
/** end of test_code_3 **/