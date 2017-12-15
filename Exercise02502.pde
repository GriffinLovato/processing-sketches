/* Lovato, Griffin
*
* 12/15/2017
*
* Exercise 02502
*
* A sketch with spheres and boxes translated around, with illumination
* from lights and rotations.
*/
void setup() {
  size(400,400,P3D);
  background(0);
}
void draw() {
  noStroke();
  pointLight(255,255,255,200,200,0);
  
  pushMatrix();
  translate(100,100,-50);
  rotateX(45);
  rotateY(20);
  fill(200,0,0);
  box(75);
  popMatrix();
  
  pushMatrix();
  translate(300,300,-50);
  rotateX(-45);
  rotateY(-20);
  fill(0,0,150);
  box(100);
  popMatrix();
  
  noStroke();
  
  pushMatrix();
  translate(100,300,-50);
  fill(0,255,0);
  sphere(75);
  popMatrix();
  
  pushMatrix();
  translate(300,100,-50);
  fill(200,200,0);
  sphere(100);
  popMatrix();
}