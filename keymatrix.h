#pragma once
#include <8051.h>
#define check_and_return(pin, key) \
    if (pin == 0)                  \
    {                              \
        while (pin == 0)           \
            ;                      \
        return key;                \
    }
inline char get_pressed_key()
{
    P1 = 0xff;
    P1_3 = 0;
    check_and_return(P1_7, 1);
    check_and_return(P1_6, 5);
    check_and_return(P1_5, 9);
    check_and_return(P1_4, 13);

    P1 = 0xff;
    P1_2 = 0;
    check_and_return(P1_7, 2);
    check_and_return(P1_6, 6);
    check_and_return(P1_5, 10);
    check_and_return(P1_4, 14);

    P1 = 0xff;
    P1_1 = 0;
    check_and_return(P1_7, 3);
    check_and_return(P1_6, 7);
    check_and_return(P1_5, 11);
    check_and_return(P1_4, 15);

    P1 = 0xff;
    P1_0 = 0;
    check_and_return(P1_7, 4);
    check_and_return(P1_6, 8);
    check_and_return(P1_5, 12);
    check_and_return(P1_4, 16);
    return 0;
}