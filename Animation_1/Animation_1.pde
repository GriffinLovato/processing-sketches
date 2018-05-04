float y = 0.0;
float x = 0.0;
float z = 100;
float w = 100;

void draw() {
  frameRate(150);
  background(127.5);
  line(0,y,100,y);
  y = y + 0.05;
  line (x,0,x,100);
  x = x + 0.05;
  line(100,z,0,z);
  z = z - 0.05;
  line(w,100,w,0);
  w = w - 0.05;
  
  line(0,y-100,100,y-100);
  line(x-100,0,x-100,100);
  line(100,z+100,0,z+100);
  line(w+100,100,w+100,0);
  
  line(0,y-200,100,y-200);
  line(x-200,0,x-200,100);
  line(100,z+200,0,z+200);
  line(w+200,100,w+200,0);
}