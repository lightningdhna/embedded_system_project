#include <8051.h>
#include <8052.h>

#include <stdlib.h>

#include "keymatrix.h"

#define SER P3_4
#define SCK P3_6
#define RCK P3_5

#define dir_left 0
#define dir_right 1
#define dir_up 2
#define dir_down 3

unsigned long timer_counter = 0;
int game_timer_counter = 0;

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
inline void display_led_mat()
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
        for (char i = 0; i < 10; i++)
            ;
    }
}
inline char get_direction(const char tail)
{
    char temp = 0x80 >> (tail % 8);
    return (((bit1[(tail / 8)] & temp) != 0) << 1) | ((bit0[(tail / 8)] & (temp)) != 0);
}

inline void update_direction(const char tail, const char direction)
{
    char temp = 0x80 >> (tail % 8);
    bit1[(tail / 8)] &= ~temp;
    if ((direction >> 1))
    {
        bit1[(tail / 8)] |= temp;
    }
    bit0[(tail / 8)] &= ~temp;
    if ((direction & 0x01))
    {
        bit0[(tail / 8)] |= temp;
    }
}

inline char value(const char a)
{
    return (data_mat[(a / 8)] & (0x80 >> (a % 8))) != 0;
}

inline void invert(const char a)
{
    data_mat[(a / 8)] ^= 0x80 >> (a % 8);
}
inline void turn_on(const char a)
{
    data_mat[(a / 8)] |= 0x80 >> (a % 8);
}
inline void turn_off(const char a)
{
    data_mat[(a / 8)] &= ~(0x80 >> (a % 8));
}

void game_over()
{
    for (char i = 0; i < 8; i++)
    {
        data_mat[i] = 0xff;
    }
    while (1)
    {

        display_led_mat();
    }
}
void update_food()
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
void update_game()
{
    if (head != food && (data_mat[(head / 8)] & (0x80 >> (head % 8))))
    {
        game_over();
    }
    turn_on(head);
    if (head == food)
    {
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

void go_up()
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
void go_down()
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
void go_left()
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
void go_right()
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
void reset_timer_1()
{
    // TF1 = 0;
    TH1 = 0x4B; // Thiết lập giá trị đầu tiên của thanh ghi đếm cao
    TL1 = 0xFF; // Thiết lập giá trị đầu tiên của thanh ghi đếm thấp
}

void key_pressed_handle()
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
void main()
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
    if (get_direction(0) != dir_right)
    {
        return;
    }
    tail = 0;

    update_food();
    turn_on(food);

    while (1)
    {
        display_led_mat();
        key_pressed = get_pressed_key();
        if (key_pressed)
        {
            key_pressed_handle();
        }
    }
}
