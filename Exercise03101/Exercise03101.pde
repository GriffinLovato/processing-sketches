/*
Lovato, Griffin

3/7/2018

Exercise 031-01

A sketch depicting a sound() pattern. Press Left to increase
turbulence, Right to decrease turbulence, and Up to reset.
*/


float power = 3.0;
float d = 16.0;

void setup() {
  size(1000, 200);
  noSmooth();
}

void draw () {
  println(d);
  for (int y = 0; y < height; y++) {
    for (int x = 0; x < width; x++) {
      float total = 0.0;
      for (float i = d; i >= 1; i = i/2.0) {  
        total += noise(x/d, y/d) * d;
      }
      float turbulence = 128.0 * total/d;
      float base = (x*0.2) + (y*0.12);
      float offset = base + (power * turbulence / 256.0);
      float gray = abs(sin(offset)) * 256.0;
      stroke(gray);
      point(x, y);
    }
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      d = 30.0;
    } else if (keyCode == RIGHT) {
      d = 3.0;
    }
    } else {
      d = 16.0;
    }
}