/*
 * blink.c:
 *	Standard "blink" program in wiringPi. Blinks an LED connected
 *	to the first GPIO pin.
 *
 * Copyright (c) 2012-2013 Gordon Henderson.
 ***********************************************************************
 * This file is part of wiringPi:
 *      https://github.com/WiringPi/WiringPi
 *
 *    wiringPi is free software: you can redistribute it and/or modify
 *    it under the terms of the GNU Lesser General Public License as published by
 *    the Free Software Foundation, either version 3 of the License, or
 *    (at your option) any later version.
 *
 *    wiringPi is distributed in the hope that it will be useful,
 *    but WITHOUT ANY WARRANTY; without even the implied warranty of
 *    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *    GNU Lesser General Public License for more details.
 *
 *    You should have received a copy of the GNU Lesser General Public License
 *    along with wiringPi.  If not, see <http://www.gnu.org/licenses/>.
 ***********************************************************************
 */

#include <stdio.h>
#include <string.h>
#include <errno.h>
#include "wiringPi.h"
#include "wiringSerial.h"

#define	LED_PIN	    25
#define	BUTTON_PIN	24
int main (void)
{
  int fd;
  int button_current_state = LOW;
  int button_prev_state = LOW;
  int led_state = LOW;

  fd = serialOpen ("/dev/ttyAMA0", 9600);
  serialPuts(fd,"################################ WELCOM TO ITI EMBEDDED SYSTEM ################################\n"); 
  wiringPiSetup () ;
  pinMode (LED_PIN , OUTPUT) ;
  pinMode (BUTTON_PIN , INPUT) ;
  digitalWrite (LED_PIN , LOW) ;
  for (;;)
  {
    button_current_state = digitalRead (BUTTON_PIN);
    if((button_prev_state == LOW) && (button_current_state == HIGH))
    {
      button_prev_state = button_current_state;

    }

    else if ((button_prev_state == HIGH) && (button_current_state == LOW))
    {
      led_state = led_state ^ HIGH;
      button_prev_state = button_current_state;
    }

    switch(led_state)
    {
      case LOW:
      digitalWrite (LED_PIN,LOW);
      printf("LED OFF\n");
      serialPuts(fd,"LED OFF\n"); 
      break;

      case HIGH:
      digitalWrite (LED_PIN,HIGH);
      printf("LED ON\n");
      serialPuts(fd,"LED ON\n"); 
      break;

      default:
      digitalWrite (LED_PIN,LOW);
    }
    delay(250);
  }
  return 0 ;
}
