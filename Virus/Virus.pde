PVector v1, v2;

void setup() {
  size(300,300);
  noLoop();
  v1 = new PVector(120,60);
  v2 = new PVector(75,150); 
}

void draw() {
  background(0);
  
  strokeWeight(5);
  stroke(100);
  ellipse(v1.x, v1.y, 50, 50);
  ellipse(v2.x, v2.y, 50, 50);
  v2.add(v1);
  ellipse(v2.x, v2.y, 50, 50);
  
  strokeWeight(2);
  stroke(255,0,0);
  line(120,0,120,60);
  line(75,0,75,150);
  line(195,60,195,210);
  
  stroke(0,0,255);
  line(0,60,120,60);
  line(0,150,75,150);
  line(75,210,195,210);
  
  stroke(0,255,0);
  line(0,0,120,60);
  line(75,150,195,210);
  
  stroke(255,125,0);
  line(0,0,75,150);
  line(120,60,195,210);
  
  strokeWeight(5);
  stroke(255);
  point(195,150);
  point(120,210);
}