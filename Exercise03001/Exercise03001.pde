/*
Lovato, Griffin

3/6/18

Exercise 030-01

This sketch creates 3 sets of points within a range. The red range has a static
x value, the green range have a random value determined by randomSeed(), and the
blue range uses random() x values from the computer.
*/

int i = 250;

void setup() {
  size(500,500);
  background(175);
  line(width/3,0,width/3,height);
  line((width/3)*2,0,(width/3)*2,height);
}

void draw() {
  for(int y1 = 0; y1 < 500; y1 += 5) {
    stroke(255,0,0);
    strokeWeight(2);
    point(width/6,y1);
  }
  for(int y2 = 0; y2 < 500; y2 += 5) {
    stroke(0,0,255);
    strokeWeight(2);
    float z = random(333,500);
    point(z,y2);
  }
  randomSeed(0);
  for(int y3 = 0; y3 < 500; y3 += 5) {
    stroke(0,255,0);
    strokeWeight(2);
    float x = random(167,333);
    point(x,y3);
  }
}