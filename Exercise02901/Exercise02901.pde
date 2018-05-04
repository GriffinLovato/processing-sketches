import processing.serial.*;
import cc.arduino.*;

Arduino arduino;

int mySwitch = 2;
int myLED = 13;
int potPin = 0;

float offset = 30;
float scaleVal = 35;
float angleInc = PI/10;

void setup() {
  arduino = new Arduino(this, Arduino.list() [0], 57600);
  arduino.pinMode (mySwitch,Arduino.INPUT);
  arduino.pinMode(myLED,Arduino.OUTPUT);
  
  size(1000,100);
}

void draw() {
  float angle = map(arduino.analogRead(potPin),0,1024,-1,1);
  for (int i = 0; i < width; i += 10) {
    float sine = offset + (sin(angle)*scaleVal);
    float cosine = offset + (cos(angle*scaleVal);
    
    point(i,sin(sine));
    point(i,cos(cosine));
  }
  delay(100);
}