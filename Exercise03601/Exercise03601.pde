int x = 350;  // X-coordinate
int y = 250;   // Y-coordinate
int r = 80;   // Starting radius
int n = 7;    // Number of recursions
int rs = 0;   // Random seed value

void setup() { 
  size(700, 500); 
  noStroke(); 
  frameRate(2);
} 

void draw() {
  background(0);
  randomSeed(rs);
  drawCircle(x, y, r, n); 
  rs++;
}  

void drawCircle(float x, float y, int radius, int num) {                    
  float value = 255 * num / 6.0; 
  fill(value, 153); 
  ellipse(x, y, radius*2, radius*2);      
  if (num > 1) { 
    num = num - 1; 
    int branches = int(10); 
    for (int i = 0; i < branches; i++) { 
      float a = (i); 
      float newx = x + cos(a) * 16.0 * num/2; 
      float newy = y + sin(a) * 16.0 * num/2; 
      drawCircle(newx, newy, radius/2, num); 
    } 
  } 
}