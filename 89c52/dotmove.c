#include <8051.h>
#include <stdlib.h>

#include "led7seg.h"
#include "keymatrix.h"

char received_data;
char point = 65;
void resolve_message(void);
void move_up(void);
void move_down(void);
void move_left(void);
void move_right(void);

#define SER P3_4
#define SCK P3_6
#define RCK P3_5

//***************************************************************//
void uart_init(void)
{
    // PCON = 0x80;

    TMOD &= 0x0f;
    TMOD |= 0x20;
    TH1 = 0xfd;
    TL1 = 0xfd;
    ET1 = 0;
    TR1 = 1;

    SM0 = 0;
    SM1 = 1;
    // allow interrupt for receive interrupt
    ES = 1;
    EA = 1;
    REN = 1;
}

void UART_Receive(void) __interrupt(4)
{
    P2 = 0x10;
    if (RI)
    {
        P2 = ~SBUF;
        received_data = SBUF; // Get received data
        resolve_message();
        RI = 0; // Clear receive interrupt flag
    }
}
//***************************************************************//

/* ------------------------------------------------------------- */
char data_mat[8];

inline void display_led_mat(void)
{
    for (char row = 0; row < 8; row++)
    {
        const char current_data = data_mat[row];
        for (char i = 0; i < 8; i++)
        {
            SER = (0x80 >> row) & (0x80 >> i);
            SCK = 1;
            SCK = 0;
        }
        P0 = 0xff;
        RCK = 1;
        RCK = 0;
        P0 = ~current_data;
        for (char i = 0; i < 5; i++)
            ;
    }
}
inline char value(const char a)
{
    return (data_mat[a >> 3] & (0x80 >> (a & 7))) != 0;
}

inline void invert(const char a)
{
    data_mat[a >> 3] ^= 0x80 >> (a & 7);
}
inline void turn_on(const char a)
{
    if (a > 63)
        return;
    data_mat[a >> 3] |= 0x80 >> (a & 7);
}
inline void turn_off(const char a)
{
    if (a > 63)
        return;
    // data_mat[a >> 3] &= ~(0x80 >> (a & 7));
    data_mat[a >> 3] = 0;
}
inline int valid_point(const int point)
{
    return point >= 0 && point < 65;
}
void resolve_message(void)
{
    if (received_data == 127)
    {
        }
    else if (received_data == 65)
    {
        turn_off(point);
        point = 65;
    }
    else if (received_data > 70)
    {
        received_data -= 70;
    }
    else
    {
        if (received_data != point)
        {
            turn_off(point);
            point = received_data;
            turn_on(point);
        }
    }
}
/*-----------this is for movement control------------*/

void main(void)
{
    // turn_on(point);
    uart_init();
    while (1)
    {
        display_led_mat();
    }
}