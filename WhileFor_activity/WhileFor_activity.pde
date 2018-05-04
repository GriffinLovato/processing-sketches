void setup() {
  size(300,20);
  strokeWeight(3);
}

void draw() {
  background(255);
  for (int i = 10; i < 290; i += 5) {
    for (int h = 10; h < 290; h += 5) {
    line(i,10,i,10);
    }
  }
}