void setup() {
  size(600,600);
}

void draw() {
  background(255);
  stroke(102);
  line(0,height/2,width,height/2);
  fill(255,0,0,150);
  int d = mouseY/2+10;
  ellipse(mouseX,height/2,d,d);
  fill(0,255,0,150);
  int iX = width-mouseX;
  int iY = height-mouseY;
  int iD = (iY/2)+10;
  ellipse(iX,height/2,iD,iD);
}