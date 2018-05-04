float x = 150;
float y = 150;
float z = 150;
float q = 100;
float w = 100;
float e = 100;
float r = 150;
float t = 150;
float u = 150;


void setup() {
  size(300,300);
  background(0);
  frameRate(10);
}
void draw() {
  if (keyPressed) {
    if (keyCode==UP) {
      y-=50;
    }
    if (keyCode==DOWN) {
      y+=50;
    }
    if (keyCode==LEFT) {
      x-=50;
    }
    if (keyCode==RIGHT) {
      x+=50;
    }
    if (key == 'a') {
      z+=25;
    }
    if (key == 's') {
      z-=25;
    }
    if (key == 'q') {
      q=250;
    }
    if (key == 'w') {
      w=250;
    }
    if (key == 'e') {
      e=250;
    }
    if (key == 'r') {
      q=100;
    }
    if (key == 't') {
      w=100;
    }
    if (key == 'u') {
      e=100;
    }
  }
  fill(q,w,e);
  ellipse(x,y,z,z);
}