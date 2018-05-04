/*
Lovato, Griffin
 
 3/7/2018
 
 Exercise 032-01
 
 A representation of a black hole. The green dots are the spiral of the black hole,
 the red dots are the path of an object orbiting the black hole, and the blue dot
 is an object (non-functioning).
 
 Uses code from https://www.openprocessing.org/sketch/106191
*/

float x;
float y;
float radius;
float angle;
 
void setup() {
  size(600, 600);
  noStroke();
  setStart(120, 120);
}
 
void draw() {
  fill(0,15);
  rect(0,0,width,height);
    translate(width / 2, height / 2);
    angle += 0.02;
    radius -= 0.1;
    if(radius < 0)
        radius = 0;
    x = sin(angle) * radius;
    y = cos(angle) * radius;
    fill(255);
    ellipse(x, y, 15, 15);
}
 
void setStart(int x, int y) {
    angle = atan2(x - width / 2, y - height / 2);
    radius = dist(width / 2, height / 2, x, y);
    this.x = x;
    this.y = y;
}