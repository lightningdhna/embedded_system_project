
#pragma once
#include <cmath>
#include "UART.h"
class Game
{
    double dot_x = 0, dot_y = 0;
    Connection conn1, conn2;
    const char kit_num = 2;

    int get_position()
    {
        int x = round(dot_x);
        int y = round(dot_y);
        return y * 8 + x % 8 + (x >= 8 && kit_num == 2 ? 64 : 0);
    }
    void send_position(const char position)
    {
        if (position >= 64)
        {
            conn2.send_data(position - 64);
            conn1.send_data(char(65));
        }
        else
        {
            conn1.send_data(position);
            conn2.send_data(char(65 ));
        }
    }

public:
    Game(const Connection &conn1_, const Connection &conn2_)
    {
        conn1 = conn1_;
        conn2 = conn2_;
        conn1.send_data(char(0));
        conn2.send_data(char(65));
    }
    void update(double angle, double amplitude)
    {
        // amplitude *= abs(cos(angle));
        // amplitude = max(0.0, amplitude - 1000);
        // amplitude = (amplitude / 1200);
        // amplitude *= amplitude;
        if (amplitude > 2100)
        {

            for (char i = 0; i < kit_num * 64; i++)
                send_position(i);
        }
        amplitude = (amplitude > 800.0 ? 1.0 / 50 : 0);
        dot_x += amplitude * cos(angle * PI / 180);
        dot_y -= amplitude * sin(angle * PI / 180);
        if (dot_x < 0)
            dot_x = 0;
        if (dot_x > kit_num * 8 - 1)
            dot_x = kit_num * 8 - 1;
        if (dot_y < 0)
            dot_y = 0;
        if (dot_y > 7)
            dot_y = 7;

        send_position(get_position());
    }
};