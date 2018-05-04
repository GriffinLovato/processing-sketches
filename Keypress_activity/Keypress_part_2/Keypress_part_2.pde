void setup() {
  size(300,300);
  background(0);
}
void draw() {
  if (keyPressed) {
    ellipse(mouseX,mouseY,30,30);
  }
}