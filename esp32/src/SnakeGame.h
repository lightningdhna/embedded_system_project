
#pragma once
#include "UART.h"
class SnakeGameControl
{
    Connection conn;
    int last_dir = -1;

public:
    SnakeGameControl(Connection conn_)
    {
        conn = conn_;
    }

    void update(const int dir)
    {
        if (dir == 5)
        {
            conn.send_data(dir);
        }
        else if (dir &&dir!=last_dir)
        {
            Serial.println(int(dir));
            conn.send_data(char(dir - 1));
            last_dir = dir;
        }
    }
};