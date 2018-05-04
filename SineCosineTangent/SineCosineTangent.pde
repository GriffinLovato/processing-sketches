float offset = 50.0;
float scaleVal = 35.0;
float angleInc = PI/28.0;

void setup() {
  size(1000,100);
  noStroke();
  fill(0);
}

void draw() {
  background(204);
  float angle = 0.0;
  for (int x = 0; x < width; x+=2) {
    float y1 = offset + (sin(angle)*scaleVal);
    fill(255);
    rect(x,y1,3,3);
    float y2 = offset + (cos(angle)*scaleVal);
    fill(0);
    rect(x,y2,3,3);
    float y3 = offset + (tan(angle)*scaleVal);
    fill(100,0,0);
    rect(x,y3,3,3);
    angle += angleInc;
  }
}