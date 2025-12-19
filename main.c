#include <stdio.h>

int main(void) {
    float a = 0.1f * 10.0f;
    float b = 1.0f;

    /* NG: float 同士を == で比較 */
    if (a == b) {
        printf("a equals b\n");
    }

    double x = 0.3;
    double y = 0.1 + 0.2;

    /* NG: double 同士を != で比較 */
    if (x != y) {
        printf("x is not equal to y\n");
    }

    /* NG: float と double の比較 */
    float f = 1.0f;
    double d = 1.0;

    if (f == d) {
        printf("f equals d\n");
    }

    return 0;
}
