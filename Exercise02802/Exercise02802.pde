import processing.serial.*;
import cc.arduino.*;

Arduino arduino;

int mySwitch = 2;
int myLED = 13;
int potPin = 0;

void setup() {
  arduino = new Arduino(this, Arduino.list() [0], 57600);
  arduino.pinMode (mySwitch,Arduino.INPUT);
  arduino.pinMode(myLED,Arduino.OUTPUT);
  
  size(1000,100);
}

void draw() {
  float x = map(arduino.analogRead(potPin),0,1024,-1,1);
  for (int i = 0; i < width; i += 10) {
    point(i,sin(x));
  }
  delay(100);
}