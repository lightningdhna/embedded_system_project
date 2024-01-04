#pragma once
#include <Arduino.h>

namespace JoyStick
{
    int JOYSTICK_X_PIN, JOYSTICK_Y_PIN;
    int x_min = 750;
    int y_min = 750;
    int x_max = 2900;
    int y_max = 2900;
    double x_normal = 1825;
    double y_normal = 1825;
    double angle;
    double amplitude = 0;

    void setup(int pin_x, int pin_y)
    {
        JOYSTICK_X_PIN = pin_x;
        JOYSTICK_Y_PIN = pin_y;
    };
    void test()
    {
        int x_value = analogRead(JOYSTICK_X_PIN);
        int y_value = analogRead(JOYSTICK_Y_PIN);

        Serial.print("X: ");
        Serial.print(x_value);
        Serial.print(" | Y: ");
        Serial.println(y_value);
    }
    int get_x()
    {
        int x_value = analogRead(JOYSTICK_X_PIN);
        // Serial.print("X: ");
        // Serial.println(x_value);
        return x_value;
    };
    int get_y()
    {
        int y_value = analogRead(JOYSTICK_Y_PIN);
        // Serial.print("Y: ");
        // Serial.println(y_value);
        return y_value;
    };

    double cal_angle()
    {
        double x = get_x();
        double y = get_y();
        double x_ratio = (x - x_min) / (x_max - x_min);
        double y_ratio = (y - y_min) / (y_max - y_min);
        double angle = atan2(y_ratio, x_ratio) * 180 / PI;
        return angle;
    }

    void update_angle_and_amplitude()
    {
        double x = get_x();
        double y = get_y();

        x -= x_normal;
        y -= y_normal;
        angle = atan2(y, x) * 180 / PI;
        amplitude = sqrt(x * x + y * y);
    }
    int get_direction()
    {
        // cal_angle_and_amplitude();
        if(amplitude>2000)
            return 5;
        if (amplitude > 1000)
        {
            if (angle <= 25 && angle >= -25)
                return 1;
            if (angle >= 65 && angle <= 115)
                return 2;
            if (angle > 155 || angle <= -155)
                return 3;
            if (angle >= -115 && angle <= -65)
                return 4;
        }
        return 0;
    }
}