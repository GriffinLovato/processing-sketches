import processing.serial.*;
import cc.arduino.*;
Arduino arduino;
int ledPin = 13;
int potPin = 0;
int delayVal;

void setup() {
  println(Arduino.list());
  arduino = new Arduino(this,Arduino.list() [0],57600);
  arduino = new Arduino(this,"COM5",57600);
  arduino.pinMode(ledPin,Arduino.OUTPUT);
  size(200,200);
  noStroke();
  colorMode(HSB,1000);
}
void draw() {
  delayVal = int(map(arduino.analogRead(potPin),0,1024,1,1000));
  println(delayVal);
  arduino.digitalWrite(ledPin,Arduino.HIGH);
  delay(delayVal);
  arduino.digitalWrite(ledPin,Arduino.LOW);
  delay(delayVal);
  fill(delayVal,1000,500);
  rect(0,0,width,height);
}