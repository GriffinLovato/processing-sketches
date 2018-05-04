void setup() {
  size(300,300);
  background(0);
}
void draw() {
  if (keyPressed) {
    if ((key >= 32) && (key <= 126)) {
      float x = (key - 32) * 7;
      color y = color(x,0,0);
  fill(y);
    }
  }
  ellipse(150,150,50,50);
}