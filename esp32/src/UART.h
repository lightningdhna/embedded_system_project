#pragma once
#include <Arduino.h>
// #include <SoftwareSerial.h>
class Connection
{
public:
    int tx_pin;
    HardwareSerial *serial;
    Connection(){

    }
    Connection(int tx, HardwareSerial &serial) : tx_pin(tx), serial(&serial)
    {
        serial.begin(9600, SERIAL_8N1, -1, tx);
    }

    void send_data(const char *value)
    {
        serial->println(value);
    }
    void send_data(const String &value)
    {
        serial->println(value);
    }
    void send_data(const char value)
    {
        serial->write(value);
    }

};