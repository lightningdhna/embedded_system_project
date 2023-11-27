#include <8051.h>
#include <8052.h>

#include "led7seg.h"
#define SER P3_4
#define SCK P3_6
#define RCK P3_5

inline void ic_write_byte(const unsigned char byte)
{
    for (unsigned char i = 0; i < 8; i++)
    {
        SER = byte & (0x80 >> i);
        SCK = 1;
        SCK = 0;
    }
    RCK = 1;
    RCK = 0;
}

inline void led_matrix_write_col(const unsigned char col, const unsigned char data)
{
    ic_write_byte(data);
    P0 = ~(0x80 >> col);
    P0 = 0xff;
}

unsigned char key = 0;
void main()
{
    P2 = 0;
    SCK = 0;
    RCK = 0;
    while (1)
    {
        P0 = 0;
        ic_write_byte(0xff);
    }
}
