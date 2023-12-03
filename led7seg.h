#pragma once
#include <mcs51/8051.h>

const char number_string[10] = {
    0b00111111,
    0b00000110,
    0b01011011,
    0b01001111,
    0b01100110,
    0b01101101,
    0b01111101,
    0b00000111,
    0b01111111,
    0b01101111,
};

inline void display_digit(const char led, const char digit)
{
    P0 = 0;
    P2 &= 0b11100011;
    P2 |= led << 2;
    //    p2 &= ~(8<<2);
    //    p2 ^= (led<<2);
    P0 = number_string[digit];
}

inline void display_number(long number)
{
    if (!number)
    {
        display_digit(0, 0);
        return;
    }
    char led = 0;
    char neg = 0;
    if (number < 0)
    {
        neg = 1;
        number = -number;
    }
    // if (number < 0)
    // {
    //     P0 = 0;
    //     P2 = 0 << 2;
    //     ++led;
    //     P0 = 0b01000000;
    //     number = -number;
    // }
    while (number)
    {
        display_digit(led++, number % 10);
        number /= 10;
    }
    if (neg)
    {
        P0 = 0;
        P2 = led << 2;
        P0 = 0b01000000;
    }
}

#define led_turn_off() P0 = 0
