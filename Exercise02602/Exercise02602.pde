PImage img;

void setup() {
  size(500,500,P3D);
  img = loadImage("white.jpg");
}
void draw() {
  background(0);
  
  pushMatrix();
  beginShape();
  texture(img);
  vertex(0,500,0,0,0);
  vertex(0,500,500,img.width,0);
  vertex(500,500,500,img.width,img.height);
  vertex(500,500,0,0,img.height);
  endShape();
  popMatrix();
  
  noStroke();
  
  float a = map(mouseX,0,width,0,255);
  float s = map(mouseY,0,height,0,255);
  
  ambientLight(a,0,0);
  lightSpecular(255,255,255);
  directionalLight(102,102,102,0,0,-1);
  shininess(s);
  
  translate(125,125,-50);
  sphere(50);
  
  translate(125,0,0);
  sphere(50);
  
  translate(125,0,0);
  sphere(50);
  
  translate(0,125,0);
  sphere(50);
  
  translate(-125,0,0);
  sphere(50);
  
  translate(-125,0,0);
  sphere(50);
  
  translate(0,125,0);
  sphere(50);
  
  translate(125,0,0);
  sphere(50);
  
  translate(125,0,0);
  sphere(50);
}