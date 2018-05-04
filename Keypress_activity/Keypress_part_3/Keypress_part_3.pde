void setup() {
  size(300,300);
  background(0);
}
void draw() {
  if (keyPressed) {
    text(key, mouseX, mouseY);
  }
}