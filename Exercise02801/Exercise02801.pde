import processing.serial.*;
import cc.arduino.*;

Arduino arduino;

int mySwitch = 2;
int myLED = 13;

void setup() {
  arduino = new Arduino(this, Arduino.list() [0], 57600);
  arduino.pinMode (mySwitch,Arduino.INPUT);
  arduino.pinMode(myLED,Arduino.OUTPUT);
}

void draw() {
  if(arduino.digitalRead(mySwitch) == Arduino.HIGH) {
    arduino.digitalWrite(myLED, Arduino.HIGH);
    triangle(50,10,10,90,90,90);
    fill(0,125,125);
  }
  else {
    arduino.digitalWrite(myLED, Arduino.LOW);
    rect(10,10,80,80);
    fill(255,125,125);
  }
  delay(100);
}