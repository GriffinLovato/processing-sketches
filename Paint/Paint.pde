void setup() {
size(300,300);
background(100);
}

void draw() {
  noStroke();
  if (keyPressed == true) {
    if (keyCode == UP) {
      fill(200,0,0);
    } else if (keyCode == LEFT) {
      fill(0,200,0);
    } else if (keyCode == DOWN) {
      fill(0,0,200);
    } else if (keyCode == RIGHT) {
      fill(100,100,100);
    }
  ellipse(mouseX,mouseY,100,100);
  }
}