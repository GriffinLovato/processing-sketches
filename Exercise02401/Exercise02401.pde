void setup() {
  size(500,500);
  background(255);
  
  noFill();
  beginShape();
  vertex(50,250);
  bezierVertex(150,0,350,0,450,250);
  endShape();
  
  beginShape();
  vertex(450,250);
  bezierVertex(350,500,150,500,50,250);
  endShape();
}