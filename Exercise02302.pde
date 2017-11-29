// Got stuck, used hexagon code from https://www.openprocessing.org/sketch/117535
/* Lovato, Griffin
*
* 11/28/2017
*
* Truncated Octahedron
*/

void setup() {
  size(500,500);
  background(255);
}

void draw() {
  drawHexagon(250,250,40);
  
  pushMatrix();
  translate(0,-68);
  drawHexagon(250,250,40);
  translate(100,15);
  drawHexagon(250,250,40);
  translate(-200,0);
  drawHexagon(250,250,40);
  popMatrix();
  
  pushMatrix();
  translate(62.75,34.75);
  drawHexagon(250,250,40);
  popMatrix();
  
  pushMatrix();
  translate(-62,34.75);
  drawHexagon(250,250,40);
  popMatrix();

  pushMatrix();
  translate(0,108);
  drawHexagon(250,250,40);
  translate(0,68);
  drawHexagon(250,250,40);
  popMatrix();
  
  rect(230,283,40,40);
  
  pushMatrix();
  translate(0,-176);
  rect(230,283,40,40);
  popMatrix();
  
  pushMatrix();
  translate(40,-68);
  rotate(-PI/6);
  rect(59.9,363.5,40,40);
  translate(-183,-3.5);
  rect(59.9,363.5,40,40);
  popMatrix();
  
  pushMatrix();
  translate(-170,100);
  rotate(-PI/3);
  rect(59.9,363.5,40,40);
  translate(0,182);
  rect(59.9,363.5,40,40);
  popMatrix();
}

void drawHexagon(float x, float y, float radius) {
  pushMatrix();
  translate(x, y);
  beginShape();
  for (int i = 0; i < 6; i++) {
    pushMatrix();
    float angle = PI*i/3;
    vertex(cos(angle) * radius, sin(angle) * radius);
    popMatrix();
  }
  endShape(CLOSE);
  popMatrix();
}