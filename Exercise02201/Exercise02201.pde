PImage img;

void setup() {
  size(300,300);
  img = loadImage("Computerclipart.jpg");
  noStroke();
  background(255);
}

void draw() {
  img.resize(300,150);
  image(img,0,0);
  
  if ((mousePressed) && (mouseY < 150)) {
    color a = get(mouseX, mouseY);
  } else if ((mousePressed) && (mouseY > 150)) {
    fill(a);
    point(mouseX,mouseY);
  }
}