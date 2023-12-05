#include <8051.h>
#include <stdlib.h>

#include "led7seg.h"
#include "keymatrix.h"

const char forward = 1 << 5;
const char back = 1 << 6;

char received_data;
__bit kit_id = 0;
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

void uart_send(__code char data)
{
    ES = 0;
    SBUF = data; // Load data into buffer
    while (TI == 0)
        ; // Wait for transmission to complete

    TI = 0; // Clear transmit interrupt flag
    ES = 1;
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
    data_mat[a >> 3] &= ~(0x80 >> (a & 7));
}

/* ------------------------------------------------------------- */

/*                This is for key unpressed event                  */

char key_pressed = 0;
void key_pressed_handle(void)
{
    if (point >= 64)
    {
        uart_send(key_pressed);
        return;
    }
    switch (key_pressed)
    {
    case 2:
        // up
        move_up();
        break;
    case 6:
        // down
        move_down();
        break;
    case 5:
        // left
        move_left();
        break;
    case 7:
        // right
        move_right();
        break;
    }
}

/*                This is for key unpressed event                  */

/*-----------this is for movement control------------*/

void move_up(void)
{
    if (point < 8)
        return;
    turn_off(point);
    point -= 8;
    turn_on(point);
}
void move_down(void)
{
    if (point >= 56)
    {
        return;
    }
    turn_off(point);
    point += 8;
    turn_on(point);
}
void move_left(void)
{
    if ((point & 7) == 0)
    {
        if (kit_id)
        {
            turn_off(point);
            uart_send(back | (point >> 3));
            point = 100;
        }
        return;
    }
    turn_off(point);
    point--;
    turn_on(point);
}
void move_right(void)
{
    if ((point & 7) == 7)
    {
        if (kit_id == 0)
        {
            turn_off(point);
            uart_send(forward | (point >> 3));
            point = 100;
        }
        return;
    }
    turn_off(point);
    point++;
    turn_on(point);
}
void resolve_message(void)
{
    if (received_data & forward)
    {
        kit_id = 1;
        point = 8 * (received_data ^ forward);

        turn_on(point);
    }
    else if (received_data & back)
    {
        kit_id = 0;
        point = 7 + (8 * (received_data ^ back));
        turn_on(point);
    }
    else
    {
        key_pressed = received_data;
        key_pressed_handle();
    }
}
/*-----------this is for movement control------------*/

void main(void)
{

    // while (!kit_id)
    // {
    //     if (get_pressed_key())
    //     {
    //         kit_id = 0;
    //         point = 0;
    //         turn_on(point);
    //         break;
    //     }
    // }
    kit_id = 0;
    point = 0;
    // turn_on(point);
    uart_init();
    while (1)
    {
        key_pressed = get_pressed_key();
        if (key_pressed)
        {
            key_pressed_handle();
        }
        display_led_mat();
    }
}