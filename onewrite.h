#include <8051.h>

#define one_write_pin P3_7
#define delay_us_ow(n) \
    {                  \
        i = n;         \
        while (i--)    \
            ;          \
    }

char one_write_init(void)
{
    unsigned char i;
    unsigned char response;
    one_write_pin = 1;
    one_write_pin = 0;
    delay_us_ow(247);
    one_write_pin = 1;
    delay_us_ow(32);
    response = one_write_pin;
    delay_us_ow(247);
    return response;
}
void one_write_send_bit(const _Bool bit)
{
    unsigned char i;
    one_write_pin = 0;
    delay_us_ow(4);
    one_write_pin = bit;
    delay_us_ow(24);
    one_write_pin = 1;
}
char one_write_receive_bit(void)
{
    unsigned char i;
    char bit;
    one_write_pin = 0;
    delay_us_ow(2);
    one_write_pin = 1;
    delay_us_ow(2);
    bit = one_write_pin;
    delay_us_ow(24);
    return bit;
}
void one_write_send_byte(const char byte)
{
    for (char i = 0; i < 8; i++)
    {
        one_write_send_bit(byte & (0x01 << i));
    }
}
char one_write_receive_byte(void)
{
    char result = 0x00;
    for (unsigned char i = 0; i < 8; i++)
    {
        result |= one_write_receive_bit() << i;
    }
    return result;
}