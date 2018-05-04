void setup() {
  size(500,500,P3D);
  fill(153);
  strokeWeight(1);
}

void draw() {
  background(0);
  translate(width/2,height/2,-width);
  float rx = map(mouseY,0,height, -PI, PI);
  float ry = map(mouseX,0,width, -PI, PI);
  rotateX(rx);
  rotateY(ry);
  fill(150,0,0);
  box(150,150,150);
  translate(width/4,0,0);
  fill(0,0,200);
  box(100,100,100);
  translate(width/5,height/4,-height);
  fill(0,0,200);
  box(100,100,100);
  translate(width/2,height/2,-height*10);
  fill(255,255,0);
  sphere(50);
}