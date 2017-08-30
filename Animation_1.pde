float y = 0.0;
float x = 0.0;
float z = 100;
float w = 100;

void draw() {
  frameRate(150);
  line(0,y,100,y);
  y = y + 0.05;
  line (x,0,x,100);
  x = x + 0.05;
  line(100,z,0,z);
  z = z - 0.05;
  line(w,100,w,0);
  w = w - 0.05;
}