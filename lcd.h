#include <mcs51/8052.h>

#ifndef LCD1602_H_INCLUDED
#define LCD1602_H_INCLUDED

// LCD in 8 bit interface mode
#define LCD_DATA P0
#define LCD_EN P2_7
#define LCD_RS P2_6
#define LCD_RW P2_5

#endif // LCD1602_H_INCLUDED
#define cur_line lcd_read_cursor_position() < 0x40 ? 0 : 1
#include "string.h"
#define delay_us(interval)                  \
    {                                       \
        for (char i = 0; i < interval; i++) \
            ;                               \
    };
// #define lcd_first_line() lcd_send_command(0x80);
// #define lcd_second_line() lcd_send_command(0xC0);
#define lcd_next() lcd_send_command(0x14);
#define lcd_back() lcd_send_command(0x10);
#define lcd_first_line() lcd_send_command(0x80);
#define lcd_second_line() lcd_send_command(0xC0);
#define lcd_first_line_in_col(col)     \
    {                                  \
        lcd_send_command(0x80);        \
        for (char i = 0; i < col; i++) \
            lcd_send_command(0x14);    \
    }
#define lcd_second_line_in_col(col)    \
    {                                  \
        lcd_send_command(0xC0);        \
        for (char i = 0; i < col; i++) \
            lcd_send_command(0x14);    \
    }
// Ham gui mot lenh xuong LCD
void lcd_send_command(const unsigned char x)
{
    LCD_DATA = x;
    LCD_RS = 0; // Chon thanh ghi lenh
    LCD_RW = 0; // De ghi du lieu
    LCD_EN = 1;
    delay_us(100);
    LCD_EN = 0;
    delay_us(100); // Doi cho LCD san sang
    LCD_EN = 1;
}
inline unsigned char lcd_read_cursor_position()
{
    LCD_RS = 0; // Set RS low for command mode
    LCD_RW = 1; // Set RW high for read mode
    LCD_EN = 1; // Enable LCD
    delay_us(100);
    LCD_EN = 0;      // Disable LCD
    return LCD_DATA; // Read the cursor position
}

void lcd_init()
{
    lcd_send_command(0x38); // Chon che do 8 bit, 2 hang cho LCD
    lcd_send_command(0x0E); // Bat hien thi, nhap nhay con tro
    lcd_send_command(0x01); // Xoa man hinh
    lcd_send_command(0x80); // Ve dau dong
}

// Ham de LCD hien thi mot ky tu
void lcd_write_char(const unsigned char c)
{
    LCD_DATA = c; // Dua du lieu vao thanh ghi
    LCD_RS = 1;   // Chon thanh ghi du lieu
    LCD_RW = 0;
    LCD_EN = 1;
    delay_us(10);
    LCD_EN = 0;
    delay_us(100);
    LCD_EN = 1;
}
// Ham de LCD hien thi mot xau
void lcd_write_string(const unsigned char *s)
{
    while (*s)
    {
        lcd_write_char(*s++);
    }
}
