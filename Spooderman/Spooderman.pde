class point2 {
  ArrayList points = new ArrayList();
  float x, y;
  point2 (float x_, float y_) {
    x = x_;
    y = y_;
  }
  void connect(point2[] places) {
    for (int i = 0; places.length > i; i++) {
      if((int)random(10) == 1) {
        points.add(places[i]);
      }
    }
  }
  void show() {
    for(int i = 0; points.size() > i; i++) {
      strokeWeight(4);
      stroke(random(255),random(255),random(255),30);
      line(x,y,((point2)points.get(i)).x,((point2)points.get(i)).y);
    }
    ellipse(x,y,10,10);
  }
}
//void lineCool(float x, float y, float x2, float y2, float center) {
 // PVector a = new PVector(x,y);
  //PVector b = new PVector(x2,y2);
  //b.sub(a).normalize();
  

int size = 50;
point2[] a = new point2[size];

void setup() {
  size(500,500);
  background(255);
  strokeWeight(1);
  stroke(random(255),random(255),random(255),255);
  for (int i = 0; size > i; i++) {
    a[i] = new point2(random(width), random(height));
  }
     for (int i = 0; size > i; i++) {
       a[i].connect(a);
     }
   for (int i = 0; size > i; i++) {
     a[i].show();
   }
}
void draw() {
  
}