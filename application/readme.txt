#use this command to build the application 
arm-linux-gnueabihf-gcc -static softPwm.c softTone.c wiringPi.c wiringSerial.c switch_led.c -o iti_app

