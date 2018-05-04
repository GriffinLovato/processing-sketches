PImage img, img2;
color red, blue, yellow, green, purple;

void setup() {
  size(300,300);
  background(255);
  img = loadImage("Processinglogo.png");
  img2 = loadImage("Processinglogo.png");
  red = color(255,0,0);
  blue = color(0,0,255);
  yellow = color(255,255,0);
  green = color(0,255,0);
  purple = color(200,0,200);
}

void draw() {
  img.resize(150,150);
  
  tint(red);
  image(img,0,0);
  tint(blue);
  image(img,150,0);
  tint(yellow);
  image(img,0,150);
  tint(green);
  image(img,150,150);
  
  img2.resize(50,50);
  tint(purple);
  image(img2,125,125);
}