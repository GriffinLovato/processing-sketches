PImage img, img2;

void setup() {
  size(300,300);
  img = loadImage("Computerclipart.jpg");
  img2 = loadImage("Computerclipart - Copy.jpg");
  img.mask(img2);
}

void draw() {
  background(255);
  img.resize(300,300);
  image(img,0,0);
  filter(GRAY);
}