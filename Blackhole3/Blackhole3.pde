int constant = 250;
float angle = 0.05;
int scalar = 200;
float speed = 0.01;
 
void setup(){
size(500,500);
smooth();
noStroke();
}

void draw(){
fill(0,15);
rect(0,0,width,height);
float x = constant + sin(angle) * scalar;
float y = constant + cos(angle) * scalar;
fill(255);
ellipse(x,y,50,50);
angle = angle + speed;
angle += 0.01;
}