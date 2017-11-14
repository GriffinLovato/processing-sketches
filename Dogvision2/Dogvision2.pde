PImage img;
void setup() {
  size(700,700);
  img = loadImage("montroig-village-and-church.jpg");
  img.resize(700,700);
  image(img,0,0);
  loadPixels();
  for(int i = 0; i < width*height; i++) {
    float r = red(pixels[i]);
    float g = green(pixels[i]);
    float b = blue(pixels[i]);
    pixels[i] = color((r+g)/2,(r+g)/2,b);
}
updatePixels();
}