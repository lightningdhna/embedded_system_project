// // #include <intrins.h>
// #include <8051.h>

// #define DQ P3_7

// void delay_us_2x(unsigned char t)
// {
//     while (--t)
//         ;
// }

// _Bool get_dq(void)
// {
//     return DQ;
// }

// void set_dq(const _Bool state)
// {
//     DQ = state;
// }

// _Bool reset_dq(void)
// {
//     set_dq(0);
//     delay_us_2x(80);
//     set_dq(1);
//     delay_us_2x(15);
//     return get_dq();
// }

// void write_dq(unsigned char dat)
// {
//     for (unsigned char i = 0; i < 8; i++)
//     {
//         set_dq(0);
//         DQ = dat & 0x01;
//         delay_us_2x(5);
//         set_dq(1);
//         dat >>= 1;
//     }
// }

// unsigned char read_dq(void)
// {
//     unsigned char dat = 0;
//     for (unsigned char i = 0; i < 8; i++)
//     {
//         set_dq(0);
//         delay_us_2x(2);
//         set_dq(1);
//         delay_us_2x(2);
//         dat >>= 1;
//         if (get_dq())
//             dat |= 0x80;
//         delay_us_2x(4);
//     }
//     return dat;
// }

// void init_ds18b20(void)
// {
//     while (!reset_dq())
//         ;
//     write_dq(0xCC);
//     write_dq(0x44);
// }

// int get_temp(void)
// {
//     unsigned char a, b;
//     int temp;
//     reset_dq();
//     write_dq(0xCC);
//     write_dq(0xBE);
//     a = read_dq();
//     b = read_dq();
//     temp = (b << 8) | a;
//     // temp = ((b << 8) | a + 8) / 16; // Round to nearest degree Celsius
//     return temp;
// }

#include "onewrite.h"

#define skip_rom 0xcc
#define convert_t 0x44
#define read_scratchpad 0xbe

void init_ds18b20(void)
{
    one_write_init();
    one_write_send_byte(skip_rom);
    one_write_send_byte(convert_t);
}

int get_temp(void)
{
    init_ds18b20();
    one_write_init();
    one_write_send_byte(skip_rom);
    one_write_send_byte(read_scratchpad);
    const char high_byte = one_write_receive_byte();
    const char low_byte = one_write_receive_byte();
    const int temp = (high_byte << 8) | low_byte;
    const int result = temp >> 4;
    return temp >> temp;
}