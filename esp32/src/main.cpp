#include <Arduino.h>

#include "DataStorage.h"
#include "LED.h"
#include "Timer.h"
#include "SerialCommand.h"
#include "MyServo.h"
#include "JoyStick.h"
#include "UART.h"
#include "Game.h"
#include "SnakeGame.h"

using namespace std;
LED led[5];
int cur_led = 0;
Connection conn1(16, Serial1);
Connection conn2(17, Serial2);
// Game game(conn1, conn2);
SnakeGameControl snake_game(conn1);
void exec_serial_command(vector<String> words)
{
  if (words[0] == "servo")
  {
    if (words.size() >= 2)
    {
      MyServo::change_angle(words[1]);
    }
  }
  if (words[0] == "send")
  {
    if (words.size() >= 2)
    {
      char value = String(words[1]).toInt();
      conn1.send_data(value);
    }
  }
}

void setup()
{
  // conn1.send_data(0x02);
  Serial.begin(115200);
  pinMode(LED_BUILTIN, OUTPUT); // Initialize the LED_BUILTIN pin as an output
  MyServo::setup(18);
  MyServo::change_angle(45);
  JoyStick::setup(35, 34);

  // right_led.turn_on();
  // up_led.turn_on();
  // left_led.turn_on();
  // down_led.turn_on();
  led[1].set_pin(26);
  led[2].set_pin(33);
  led[3].set_pin(32);
  led[4].set_pin(25);
  conn1.send_data(char(0));
}

long current_time = 0;
long last_time = 0;
long last_time_2 = 0;

int x_min = 9000, y_min = 9000;
int x_max, y_max;

void loop()
{

  current_time = millis();

  // Serial.println(JoyStick::amplitude);

  if (current_time - last_time < 1)
  {
    return;
  }
  last_time = current_time;

  JoyStick::update_angle_and_amplitude();
  // game.update(JoyStick::angle, JoyStick::amplitude);

  int dir = JoyStick::get_direction();

  if (dir == 5)
  {
  }
  else if (dir != cur_led)
  {
    if (dir)
    {
      led[dir].turn_on();
      if (cur_led)
      {
        led[cur_led].turn_off();
      }
    }
    else
    {
      led[cur_led].turn_off();
    }
    cur_led = dir;
  }

  if (JoyStick::amplitude > 1000)
  {
    MyServo::change_angle(JoyStick::angle);
  }

  if (current_time - last_time_2 < 10)
  {
    return;
  }
  last_time_2 = current_time;
  snake_game.update(dir);
  if (Serial.available())
  {
    vector<String> words = SerialCommand::read_and_split();
    for (auto word : words)
    {
      Serial.println(word);
    }
    exec_serial_command(words);
  }
}