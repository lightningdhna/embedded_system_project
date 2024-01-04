#include <mcs51/8051.h>

#include "led7seg.h"
#include "lcd.h"
#include "keymatrix.h"
#include "sensor.h"

void exec(void);
void stop_timer_1(void);
void reset(void);
long check = 0;

#define buzzer_pin P1_5
#define fan_pin P2_0

char fan_state;

void buzzer(void)
{
#define time 40
    for (int i = 0; i < time * 1e3 / 200; i++)
    {
        buzzer_pin = 1;
        for (int j = 0; j < 90; j++)
            ;
        buzzer_pin = 0;
        for (int j = 0; j < 90; j++)
            ;
    }
}
void fan_on(void)
{
    buzzer();
    fan_state = 1;
    fan_pin = 1;
}
void fan_off(void)
{
    buzzer();
    fan_state = 0;
    fan_pin = 0;
}
void fan_loop(void)
{
    if (fan_state)
        fan_pin = 1;
    else
        fan_pin = 0;
}
#define max_code_counter 2

char signal_codes[max_code_counter];
char interval_type;

unsigned char code_index = 0;
unsigned char read_code_index = 0;
unsigned char unread_code_counter = 0;

long time_counter = 0;
long infrared_counter = -10000;
char infrared_code = 0;
unsigned char bits_counter = 0;

long last_signal_received = -10000;

// todo remove these variable
// long max_delta = 0;

#define max_command_length 16
char command[max_command_length];
char command_index = 0;
char prev_num = 50;

void command_second_line(void)
{
    while (command_index > 0)
    {
        command_index--;
        command[command_index] = 0;
    }
    prev_num = 50;
    lcd_second_line();
    for (int i = 0; i < 16; i++)
    {
        lcd_write_char(' ');
    }
    lcd_second_line();
}
void command_first_line(void)
{
    while (command_index > 0)
    {
        command_index--;
        command[command_index] = 0;
    }
    lcd_first_line();
    for (int i = 0; i < 16; i++)
    {
        lcd_write_char(' ');
    }
    lcd_first_line();
}

#define update_key(c)                           \
    {                                           \
        if (command_index < max_command_length) \
        {                                       \
            command[command_index] = c;         \
            lcd_write_char(c);                  \
            command_index++;                    \
        }                                       \
    }
const char key_map[12][8] = {
    {'_', '\'', '0', '>', 0},               // Phím 0
    {'.', '+', '-', '*', '/', '^', '1', 0}, // Phím 1
    {'a', 'b', 'c', '2', 0},                // Phím 2
    {'d', 'e', 'f', '3', 0},                // Phím 3
    {'g', 'h', 'i', '4', 0},                // Phím 4
    {'j', 'k', 'l', '5', 0},                // Phím 5
    {'m', 'n', 'o', '6', 0},                // Phím 6
    {'p', 'q', 'r', 's', '7', 0},           // Phím 7
    {'t', 'u', 'v', '8', 0},                // Phím 8
    {'w', 'x', 'y', 'z', '9', 0},           // Phím 9
    // {'*', ' ', ' ', ' '},      // Phím *
    // {'#', ' ', ' ', ' '}       // Phím #
};

void input_handler(const char num, const char interval_type)
{

    if (num != prev_num && command_index == max_command_length)
    {
        prev_num = 50;
        return;
    }
    if (num == prev_num && interval_type)
    {
        lcd_back();
        --command_index;
        if (command[command_index] == ' ' || command[command_index] == 0)
        {
            update_key(*key_map[num]);
            prev_num = num;
        }
        // update_key(command[command_index] + 1);
        {
            char id = 0;
            while (key_map[num][id])
            {
                if (key_map[num][id] == command[command_index])
                {

                    if (key_map[num][id + 1])
                    {
                        update_key(key_map[num][id + 1]);
                    }
                    else
                        update_key(*key_map[num]);
                    break;
                }
                ++id;
            }
        }
    }
    else
    {
        update_key(*key_map[num]);
        prev_num = num;
    }
}

void delete_one_char(void)
{
    prev_num = 50;
    if (command_index <= 0)
        return;
    lcd_back();
    --command_index;
    command_index[command] = 0;
    lcd_write_char(' ');
    lcd_back();
}
void add_space(void)
{
    prev_num = 50;
    update_key(' ');
}
const char infrared_num[] = {151, 207, 231, 133, 239, 199, 165, 189, 181, 173};
#define infrared_left 253
#define infrared_right 61
#define infrared_off 93
#define infrared_exec 221
#define infrared_mode 157
#define infrared_mute 29
#define infrared_vol_up 111
#define infrared_vol_down 87
#define infrared_eq 31
void exec_infrared_signal(void)
{

    switch (signal_codes[read_code_index])
    {
    case infrared_off:
        reset();
        break;
    case infrared_vol_up:
        command_first_line();
        break;
    case infrared_vol_down:
        command_second_line();
        break;
    case infrared_left:
        delete_one_char();
        break;
    case infrared_right:
        add_space();
        break;
    case infrared_exec:
        exec();
        break;
    default:
        for (char i = 0; i <= 9; i++)
        {
            if (signal_codes[read_code_index] == infrared_num[i])
            {
                input_handler(i, interval_type & (1 << read_code_index));
                break;
            }
        }
    }

    read_code_index = (read_code_index + 1) % max_code_counter;
    --unread_code_counter;
}

void infrared_interrupt(void) __interrupt(0)
{

    long delta = time_counter - infrared_counter;
    if (delta > 200)
    {
        infrared_counter = time_counter;
        return;
    }
    else if (delta < 5)
    {
        return;
    }
    else
    {
        infrared_counter = time_counter;
    }

    // if (delta > 900 && delta < 1000)
    // {
    //     ++check;
    //     return;
    // }

    if (delta > 100)
    {
        infrared_code = 0;
        bits_counter = 0;
        return;
    }

    ++bits_counter;
    if (bits_counter >= 24)
    {
        if (delta > 17)
        {
            infrared_code = (infrared_code << 1) | 1;
        }
        else
        {
            infrared_code = (infrared_code << 1);
        }
    }
    if (bits_counter == 32)
    {
        signal_codes[code_index] = infrared_code;
        interval_type &= (1 << code_index);
        interval_type |= (((time_counter - last_signal_received) / 10) <= 800 ? 1 : 0) << code_index;

        last_signal_received = time_counter;
        code_index = (code_index + 1) % max_code_counter;
        ++unread_code_counter;
    }

    // Handle the interrupt here.
    // This could involve reading the infrared signal and taking some action.
}
unsigned int timer1_counter = 0;
void reset_timer_1(void)
{
    // TF1 = 0;
    TH1 = 0x4B; // Thiết lập giá trị đầu tiên của thanh ghi đếm cao
    TL1 = 0xFF; // Thiết lập giá trị đầu tiên của thanh ghi đếm thấp
}
void stop_timer_1(void)
{
    TR1 = 0;
}
void start_time_1(void)
{
    timer1_counter = 0;
    reset_timer_1();
    TR1 = 1;
}
void (*do_something_1)(void) = NULL;

void count_down(void)
{
    if ((timer1_counter % 20) == 0)
    {
        if (check <= 0)
        {
            stop_timer_1();
            buzzer();
            do_something_1 = NULL;
        }
        else
            --check;
    }
}
void count_up(void)
{
    if ((timer1_counter % 20) == 0)
    {
        ++check;
    }
}
void timer_fan_off(void)
{
    if ((timer1_counter % 20) == 0)
    {
        if (check <= 0)
        {
            fan_off();
            do_something_1 = NULL;
            stop_timer_1();
        }
        else
            --check;
    }
}
void timer0_interrupt(void) __interrupt(1)
{
    ++time_counter;

    // Handle the interrupt here.
    // This could involve resetting the timer and taking some action.
}

void timer1_interrupt(void) __interrupt(3)
{

    ++timer1_counter;
    reset_timer_1();
    if (do_something_1 != NULL)
    {
        do_something_1();
    }
    else
    {
    }

    // Xử lý thêm nếu cần thiết
}

char a[6];
long last_time_key_pressed = 0;
char prev_key_pressed = 0;
char key_pressed = 0;
void exec_key_pressed(void)
{
    switch (key_pressed)
    {
    case 4:
        command_first_line();
        return;
    case 8:
        command_second_line();
        return;
    case 2:
        delete_one_char();
        return;
    case 3:
        add_space();
        return;
    case 16:
        exec();
        return;
    }
    if (time_counter - last_time_key_pressed <= 8000 && prev_key_pressed == key_pressed)
    {
        switch (key_pressed)
        {
        case 1:
            input_handler(0, 1);
            break;
        case 5:
            input_handler(1, 1);
            break;
        case 6:
            input_handler(2, 1);
            break;
        case 7:
            input_handler(3, 1);
            break;
        case 9:
            input_handler(4, 1);
            break;
        case 10:
            input_handler(5, 1);
            break;
        case 11:
            input_handler(6, 1);
            break;
        case 13:
            input_handler(7, 1);
            break;
        case 14:
            input_handler(8, 1);
            break;
        case 15:
            input_handler(9, 1);
            break;
        }
    }
    else
    {
        switch (key_pressed)
        {
        case 1:
            input_handler(0, 0);
            break;
        case 5:
            input_handler(1, 0);
            break;
        case 6:
            input_handler(2, 0);
            break;
        case 7:
            input_handler(3, 0);
            break;
        case 9:
            input_handler(4, 0);
            break;
        case 10:
            input_handler(5, 0);
            break;
        case 11:
            input_handler(6, 0);
            break;
        case 13:
            input_handler(7, 0);
            break;
        case 14:
            input_handler(8, 0);
            break;
        case 15:
            input_handler(9, 0);
            break;
        }
    }
    last_time_key_pressed = time_counter;
    prev_key_pressed = key_pressed;
}
void ex1_interrupt(void) __interrupt(IE1_VECTOR)
{
    fan_on();
}
int main(void)
{
    // setting interruption for INT1 aka P33 -> K4 button
    EX1 = 1;
    IT1 = 1;

    init_ds18b20();
    // Set up the interrupt.
    // Enable the external interrupt.
    IT0 = 1; // Falling edge trigger
    EX0 = 1; // Enable INT0 interrupt
    EA = 1;  // Enable global interrupt flag

    TMOD = 0x12; // Timer 0 mode 1 (16-bit timer

    TH0 = 0xA4;
    TL0 = TH0;

    ET0 = 1; // Enable timer 0 interrupt'
    TR0 = 1; // Start timer 0
    // 4BFF
    TF0 = 0;
    TH1 = 0x4B; // Thiết lập giá trị đầu tiên của thanh ghi đếm cao
    TL1 = 0xFF; // Thiết lập giá trị đầu tiên của thanh ghi đếm thấp

    // Cho phép ngắt timer 1
    ET1 = 1;

    P2 = 0;
    P0 = 0;

    lcd_init();
    lcd_first_line();

    while (1)
    {
        fan_loop();
        display_number(check);
        key_pressed = get_pressed_key();
        if (key_pressed)
        {
            exec_key_pressed();
        }
        while (unread_code_counter)
        {

            exec_infrared_signal();
        }
    }
}

void reset(void)
{
    do_something_1 = NULL;
    stop_timer_1();
    check = 0;
    while (command_index > 0)
    {
        command_index--;
        command[command_index] = 0;
    }
    prev_num = 50;
    lcd_init();
}

void cal_num(const char *start)
{
    check = 0;
    if (start != NULL)
    {
        start++; // Di chuyển vị trí xuống sau khoảng trắng
        if ((interval_type & (1 << 3)))
        {
            interval_type ^= (1 << 3);
        }
        while (*start && *start != '+' && *start != '-' && (*start > '9' || *start < '0'))
            ++start;
        if (*start == '-')
        {
            interval_type |= (1 << 3);
            ++start;
        }
        else if (*start == '+')
        {
            ++start;
        }
        while (*start)
        {
            check = (check << 3) + (check << 1) + ((*start) ^ '0');
            ++start;
        }
        if ((interval_type & (1 << 3)))
        {
            check = -check;
        }
    }
}

void exec(void)
{
    if (strncmp(command, "buzzer", strlen("buzzer")) == 0)
    {
        buzzer();
    }
    else if (strncmp(command, "led off", strlen("led off")) == 0)
    {
        led_turn_off();
    }
    if (strncmp(command, "clear", strlen("clear")) == 0)
    {
        while (command_index > 0)
        {
            command_index--;
            command[command_index] = 0;
        }
        prev_num = 50;
        lcd_init();
    }
    else if (strncmp(command, "led7 write", strlen("lcd write")) == 0)
    {
        const char *start = strchr(command + strlen("lcd write"), ' ');
        cal_num(start);
    }
    else if (strncmp(command, "show", strlen("show")) == 0)
    {
        const char *start = strchr(command + strlen("show"), ' ');
        cal_num(start);
    }
    else if (strncmp(command, "countdown", strlen("countdown")) == 0)
    {
        const char *start = strchr(command + strlen("countdown"), ' ');
        check = 0;
        cal_num(start);
        do_something_1 = count_down;
        start_time_1();
    }
    else if (strncmp(command, "timer", strlen("timer")) == 0)
    {
        const char *start = strchr(command + strlen("timer"), ' ');
        check = 0;
        cal_num(start);
        do_something_1 = count_down;
        start_time_1();
    }
    else if (strncmp(command, "stopwatch", strlen("stopwatch")) == 0)
    {
        do_something_1 = count_up;
        start_time_1();
    }
    else if (strncmp(command, "fan off", strlen("fan off")) == 0)
    {
        if (fan_state)
        {
            const char *start = strchr(command + strlen("fan off"), ' ');
            check = 0;
            cal_num(start);
            do_something_1 = timer_fan_off;
            start_time_1();
        }
    }
    else if (strncmp(command, "fan on", strlen("fan on")) == 0)
    {
        if (fan_state == 0)
        {
            fan_on();
            const char *start = strchr(command + strlen("fan off"), ' ');
            check = 0;
            cal_num(start);
            if (check > 0)
            {
                do_something_1 = timer_fan_off;
                start_time_1();
            }
        }
    }
    else if (
        strncmp(command, "temp", strlen("temp")) == 0 ||
        strncmp(command, "temperature", strlen("temperature")) == 0)

    {
        check = get_temp();
    }
}
