PImage img, img2, img3, img4;
color red, blue, yellow, green, purple;

void setup() {
  size(300,300);
  background(255);
  img = loadImage("Computerclipart.jpg");
  img2 = loadImage("Computerclipart.jpg");
  img3 = loadImage("Computerclipart.jpg");
  img4 = loadImage("Computerclipart.jpg");
  img.filter(THRESHOLD,0.2);
  img2.filter(BLUR,5);
  img3.filter(INVERT);
  img4.filter(ERODE);
}

void draw() {
  img.resize(150,150);
  img2.resize(150,150);
  img3.resize(150,150);
  img4.resize(150,150);
  image(img,0,0);
  image(img2,150,0);
  image(img3,0,150);
  image(img4,150,150);
  
  fill(0);
  textSize(8);
  text("THRESHOLD",10,35);
  text("BLUR",175,35);
  text("INVERT",15,185);
  text("ERODE",175,185);
}