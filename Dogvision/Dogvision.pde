PImage img;

void setup() {
  size(700,700);
  stroke(255);
  strokeWeight(2);
  img = loadImage("montroig-village-and-church.jpg");
  img.resize(700,700);
}

void draw() {
    image(img,0,0);
    color a = get(mouseX,mouseY);
    float r = red(a);
    float g = green(a);
    float b = blue(a);
    float dr = (r+g)/2;
    fill(r,0,0);
    rect(125,50,50,50);
    fill(0,g,0);
    rect(225,50,50,50);
    fill(0,0,b);
    rect(325,50,50,50);
    fill(r,g,b);
    rect(425,50,50,50);
    fill(dr,dr,b);
    rect(525,50,50,50);
    
    fill(255);
    textSize(15);
    text("RED",135,45);
    text("GREEN",225,45);
    text("BLUE",330,45);
    text("HUMAN",422.5,45);
    text("DOG",532.5,45);
  }