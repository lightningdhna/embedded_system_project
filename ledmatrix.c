#include <8051.h>
#include <8052.h>

#include <stdlib.h>

#include "keymatrix.h"
#include "led7seg.h"

#define SER P3_4
#define SCK P3_6
#define RCK P3_5

#define dir_left 0
#define dir_right 1
#define dir_up 2
#define dir_down 3

unsigned long timer_counter = 0;
int game_timer_counter = 0;
char point = 0;

char sqr_left = 61;
char cur_dir = dir_right;
char data_mat[8];
char key_pressed = 0;
char head;
char tail;
char food;
char bit0[8];
char bit1[8]; // 0 : horizontal 1: vertical

// 00 : left
// 01: right
// 10: up
// 11: down
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
inline void display_game_and_point(void)
{
    P2 = 0b11111111;
    P0 = 0xFF;
    display_led_mat();
    SER = 0;
    for (char i = 0; i < 8; i++)
    {
        SCK = 1;
        SCK = 0;
    }
    RCK = 1;
    RCK = 0;
    display_number(point);
}

inline char get_direction(const char tail)
{
    char temp = 0x80 >> (tail & 7);
    return (((bit1[tail >> 3] & temp) != 0) << 1) | ((bit0[tail >> 3] & (temp)) != 0);
}

inline void update_direction(const char tail, const char direction)
{
    char temp = 0x80 >> (tail & 7);
    bit1[tail >> 3] &= ~temp;
    if (direction >> 1)
    {
        bit1[tail >> 3] |= temp;
    }
    else
    {
    }
    bit0[tail >> 3] &= ~temp;
    if (direction & 0x01)
    {
        bit0[tail >> 3] |= temp;
    }
    else
    {
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
    data_mat[a >> 3] |= 0x80 >> (a & 7);
}
inline void turn_off(const char a)
{
    data_mat[a >> 3] &= ~(0x80 >> (a & 7));
}
inline char right_shift_cycle(const char a, const char shift)
{
    return (a >> shift) | (a << (8 - shift));
}

inline char left_shift_cycle(const char a, const char shift)
{
    return (a << shift) | (a >> (8 - shift));
}
void game_over(void)
{

    for (char i = 0; i < 8; i++)
        data_mat[i] = 0;

    static const char floating_display[12][8] =
        {
            {0x81, 0x42, 0x24, 0x18, 0x18, 0x24, 0x42, 0x81}, // cross
            {0x18, 0x3C, 0x7E, 0xFF, 0xFF, 0x7E, 0x3C, 0x18}, // diamond
            {0x00, 0x66, 0xFF, 0xFF, 0x7E, 0x3C, 0x18, 0x00}, // heart
            {0x3C, 0x42, 0x81, 0xA5, 0x81, 0x99, 0x42, 0x3C}, // Smiley face facing down
            {0x3C, 0x42, 0x81, 0x81, 0x81, 0x81, 0x42, 0x3C}, // circle
            {0x60, 0x50, 0x50, 0x10, 0x10, 0x10, 0x10, 0x1F}, // thumb up
        };
    static const char firework[11][8] = {
        {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x18}, // 2x2 square at bottom
        {0x00, 0x00, 0x00, 0x18, 0x18, 0x00, 0x00, 0x00}, // Moving up
        {0x00, 0x00, 0x18, 0x18, 0x00, 0x00, 0x00, 0x00}, // At the center
        {0x24, 0x00, 0x81, 0x18, 0x18, 0x81, 0x00, 0x24}, // Explosion 1
        {0x00, 0x24, 0x00, 0x81, 0x81, 0x00, 0x24, 0x00}, // Explosion 2
        {0x24, 0x00, 0x81, 0x00, 0x00, 0x81, 0x00, 0x24}, // Explosion 3
        {0x00, 0x24, 0x00, 0x00, 0x00, 0x00, 0x24, 0x00}, // Particles shooting out
        {0x00, 0x00, 0x24, 0x00, 0x00, 0x24, 0x00, 0x00}, // Particles falling 1
        {0x00, 0x00, 0x00, 0x24, 0x24, 0x00, 0x00, 0x00}, // Particles falling 2
        {0x00, 0x00, 0x00, 0x00, 0x00, 0x24, 0x24, 0x00}, // Particles falling 3
        {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00}, // Clear screen

    };

    // if (point > 30)
    // {
    //     char i, t, j, k;
    //     while (1)
    //     {

    //         // Display the firework
    //         for (i = 0; i < 11; i++)
    //         {
    //             for (j = 0; j < 8; j++)
    //             {
    //                 data_mat[j] = firework[i][j];
    //             }
    //             for (t = 0; t < 30; t++)
    //             {
    //                 display_game_and_point();
    //             }
    //         }

    //         // Create the falling effect
    //         for (k = 0; k < 8; k++)
    //         {
    //             for (j = 0; j < 7; j++)
    //             {
    //                 data_mat[j] = data_mat[j + 1];
    //             }
    //             data_mat[7] = 0x00; // Clear the top row
    //             for (t = 0; t < 50; t++)
    //             {
    //                 // Shift the data downwards

    //                 display_game_and_point();
    //             }
    //         }
    //     }
    // }

    const char temp = rand() % 6;
    // char temp = 3;
    signed char i, j, t;
    // up
    // if (point < 10)
    // {
    //     while (1)
    //     {
    //         for (i = 0; i < 8; i++)
    //         {
    //             for (j = 0; j < 8; j++)
    //             {
    //                 data_mat[j] = floating_display[temp][(j + i) % 8];
    //             }
    //             for (t = 0; t < 30; t++)
    //             {
    //                 display_game_and_point();
    //             }
    //         }
    //     }
    // }
    // up & down
    if (point > 20)
    {

        while (1)
        {
            for (i = 0; i < 8; i++)
            {
                for (j = 0; j < 8; j++)
                {
                    data_mat[j] = floating_display[temp][(j + i) % 8] & 0b11110000 |
                                  floating_display[temp][(j - i + 8) % 8] & 0b00001111;
                    ;
                }
                for (t = 0; t < 30; t++)
                {

                    display_game_and_point();
                }
            }
        }
    }
    // cross
    else
    {

        while (1)
        {
            for (i = 0; i < 16; i++)
            {
                for (j = 0; j < 8; j++)
                {
                    if (i + j < 8)
                        data_mat[j] = (floating_display[temp][(j + i)]) >> i;
                    else if (i + j >= 16)
                    {
                        if (i + j >= 16)
                            data_mat[j] = (floating_display[temp][(i + j) % 8]) << (16 - i);
                        else
                            data_mat[j] = 0;
                    }
                    else
                        data_mat[j] = 0;

                    // data_mat[j] = (floating_display[temp][(j + i) % 8] << i) & (240 << i) |
                    //               (floating_display[temp][(j - i + 8) % 8] >> i) & (15 >> i);
                    ;
                }
                for (t = 30; t; --t)
                {
                    display_game_and_point();
                }
            }
        }
    }
}
void update_food(void)
{
    char cnt = sqr_left;
    for (char i = 0; i < 64; i++)
    {
        if (value(i))
            continue;
        if (rand() % cnt == 0)
        {
            food = i;
            return;
        }
        --cnt;
    }
}
void update_game(void)
{
    if (head != food && (data_mat[(head / 8)] & (0x80 >> (head % 8))))
    {
        game_over();
    }
    turn_on(head);
    if (head == food)
    {
        ++point;
        // find new food
        update_food();
        //  turn on food
        turn_on(food);
        --sqr_left;
        return;
    }
    else
    {
        turn_off(tail);
        char dir = get_direction(tail);
        switch (dir)
        {
        case dir_left:
            --tail;
            break;
        case dir_right:
            ++tail;
            break;
        case dir_up:
            tail -= 8;
            break;
        case dir_down:
            tail += 8;
            break;
        }
    }
}

void go_up(void)
{
    if (head < 8)
        game_over();
    if (cur_dir == dir_down)
        return;
    update_direction(head, dir_up);
    head = head - 8;
    cur_dir = dir_up;
    update_game();
}
void go_down(void)
{
    if (head >= 56)
        game_over();
    if (cur_dir == dir_up)
        return;
    update_direction(head, dir_down);
    head = head + 8;
    cur_dir = dir_down;
    update_game();
}
void go_left(void)
{
    if (head % 8 == 0)
        game_over();
    if (cur_dir == dir_right)
        return;
    update_direction(head, dir_left);
    --head;
    cur_dir = dir_left;
    update_game();
}
void go_right(void)
{
    if (head % 8 == 7)
        game_over();
    if (cur_dir == dir_left)
        return;
    update_direction(head, dir_right);
    ++head;
    cur_dir = dir_right;
    update_game();
}
void reset_timer_1(void)
{
    // TF1 = 0;
    TH1 = 0x4B; // Thiết lập giá trị đầu tiên của thanh ghi đếm cao
    TL1 = 0xFF; // Thiết lập giá trị đầu tiên của thanh ghi đếm thấp
}

void key_pressed_handle(void)
{
    reset_timer_1();
    game_timer_counter = -7;
    switch (key_pressed)
    {
    case 2:
        go_up();
        break;
    case 6:
        go_down();
        break;
    case 5:
        go_left();
        break;
    case 7:
        go_right();
        break;
    }
}

char show_food = 1;
void timer1_interrupt(void) __interrupt(3)
{

    ++timer_counter;
    reset_timer_1();
    ++game_timer_counter;
    if (!(timer_counter % 3))
    {
        if (show_food)
        {
            turn_off(food);
            show_food = 0;
        }
        else
        {
            turn_on(food);
            show_food = 1;
        }
    }
    if (!(game_timer_counter % 10))
    {
        switch (cur_dir)
        {
        case (dir_up):
            go_up();
            break;
        case (dir_down):
            go_down();
            break;
        case (dir_left):
            go_left();
            break;
        case (dir_right):
            go_right();
            break;
        }
    }
    // Xử lý thêm nếu cần thiết
}

void main(void)
{

    IT0 = 1; // Falling edge trigger
    EX0 = 1; // Enable INT0 interrupt
    EA = 1;  // Enable global interrupt flag

    TMOD = 0x12; // Timer 0 mode 1 (16-bit timer

    TH1 = 0x4B; // Thiết lập giá trị đầu tiên của thanh ghi đếm cao
    TL1 = 0xFF; // Thiết lập giá trị đầu tiên của thanh ghi đếm thấp

    // Cho phép ngắt timer 1
    ET1 = 1;
    // Bắt đầu timer 1
    reset_timer_1();
    TR1 = 1;

    while (get_pressed_key() == 0)
    {
    }
    srand(timer_counter);

    P0 = 0x00;
    SCK = 0;
    RCK = 0;
    data_mat[0] = 0xE0;
    head = 2;
    update_direction(0, dir_right);
    update_direction(1, dir_right);
    update_direction(2, dir_right);

    tail = 0;

    update_food();
    turn_on(food);

    while (1)
    {
        display_game_and_point();
        key_pressed = get_pressed_key();
        if (key_pressed)
        {
            key_pressed_handle();
        }
    }
}
