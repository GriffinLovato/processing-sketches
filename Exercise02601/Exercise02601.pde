void setup() {
  size(500,500,P3D);
}
void draw() {
  background(0);
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