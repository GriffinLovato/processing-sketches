class pend {
  float c_x, c_y; //Center
  float x, y; //Pendulum
  float angleMax = 50;
  float len = 10;
  float grav = 2;
  float t = 13;
  PVector vel = new PVector(0,0);
  PVector acel = new PVector(0,0);
  pend(float x2, float y2, float c2, float cy2) {
    x = x2;
    y = y2;
    c_x = c2;
    c_y = cy2;
  }
  void show() {
    line(c_x, c_y, x, y);
    fill(0);
    ellipse(c_x, c_y, 20, 20);
    fill(255);
    ellipse(x, y, 10, 10);
  }
  void calculate() {
    PVector a = new PVector (x,y);
    PVector b = new PVector (c_x,c_y);
    PVector c = a.sub(b);
    c = c.normalize();
    float ang = atan(c.y/c.x);
    c = c.mult(sin(ang));
    vel.x += c.x;
    vel.y += c.y;
    x += vel.x;
    y += vel.y;
    
    line(c_x,c_y,c_x+cos(radians(ang))*35,c_y+sin(radians(ang))*35);
  }
}

  pend thing = new pend(300,300,300,150);
  void setup() {
    size(600, 600);
    ellipseMode(CENTER);
  }

  void draw() {
    background(125, 10);
    thing.calculate();
    thing.show();
  }