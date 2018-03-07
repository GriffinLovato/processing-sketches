float x = 0.0;
float y = 0.0;
float easing = 0.05;

float c = 0.0;
float d = 0.0;
float radius1 = 3.0;
float speedX = 1.0;
float speedY = 1.0;
int directionX = 1;
int directionY = -1;

void setup() {
  size(150, 150);
  fill(0);
  noStroke();
}

void draw() {
  background(0,125);
  float scalar = map(width/8, 0, width, 4, 20);
  float radius = 1.0;
  for (int deg = 0; deg < 360*6; deg += scalar) {
    float angle = radians(deg);
    float a = 75 + (cos(angle) * radius);
    float b = 42 + (sin(angle) * radius);
    fill(0,255,0);
    rect(a, b, 1, 1);
    radius = radius + 0.34;
    
    float targetX = a;
    float targetY = b;
    x += (targetX - x) * easing;
    y += (targetY - y) * easing;
    
    fill(255,0,0);
    ellipse(x,y,1,1);
    
    ellipseMode(RADIUS);
    fill(0,0,255);
    ellipse(c,d,radius1,radius1);
    c += speedX * directionX;
    if ((c > x) || (c < radius1)) {
      directionX = -directionX;
    }
    d += speedY * directionY;
    if ((d > y) || (d < radius1)) {
      directionY = - directionY;
    }
  }
}
      
    
    