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
  
  for(int i = 0; 9 > i; i++) {
    pushMatrix();
    translate(125,125,0);
    translate((125*(i%3)),int(i/3)*125,-50);
    sphere(50);
    popMatrix();
  }
}