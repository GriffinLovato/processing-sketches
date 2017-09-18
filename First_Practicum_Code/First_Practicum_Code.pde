/* This is the code for First-Practicum.
It is in no means the final project */

float x = random(300,400); //Centers of the design.
float y = random(440,540);


float m = random(250); //Randomizes the sides of the arcs.
float n = random(250);
float o = random(250);
float p = random(250);

float a = random(46,144); //Radians of the design.
float b = random(146,314);
float c = random(316,404);

float t = random(255); //Randomizes the transparency.

int g = 50;

void setup() {
size(700,980);
background(0);
}
void draw() {
  
fill(255,0,100,t); //Eight layer
arc(x,y,m+420,m+420, radians(c), radians(405), PIE);
fill(255,0,50,t);
arc(x,y,n+435,n+435, radians(45), radians(a), PIE);
fill(255,0,0,t);
arc(x,y,o+450,o+450, radians(a), radians(b), PIE);
fill(200,0,0,t);
arc(x,y,p+465,p+465, radians(b), radians(c), PIE);
  
fill(200,0,255,t); //Seventh layer
arc(x,y,m+360,m+360, radians(c), radians(405), PIE);
fill(255,0,255,t);
arc(x,y,n+375,n+375, radians(45), radians(a), PIE);
fill(255,0,200,t);
arc(x,y,o+390,o+390, radians(a), radians(b), PIE);
fill(255,0,150,t);
arc(x,y,p+405,p+405, radians(b), radians(c), PIE);

fill(0,0,255,t); //Sixth layer
arc(x,y,m+300,m+300, radians(c), radians(405), PIE);
fill(50,0,255,t);
arc(x,y,n+315,n+315, radians(45), radians(a), PIE);
fill(100,0,255,t);
arc(x,y,o+330,o+330, radians(a), radians(b), PIE);
fill(150,0,225,t);
arc(x,y,p+345,p+345, radians(b), radians(c), PIE);

fill(0,200,255,t); //Fifth layer
arc(x,y,m+240,m+240, radians(c), radians(405), PIE);
fill(0,150,255,t);
arc(x,y,n+255,n+255, radians(45), radians(a), PIE);
fill(0,100,255,t);
arc(x,y,o+270,o+270, radians(a), radians(b), PIE);
fill(0,50,255,t);
arc(x,y,p+285,p+285, radians(b), radians(c), PIE);

fill(0,255,100,t); //Fourth layer
arc(x,y,m+180,m+180, radians(c), radians(405), PIE);
fill(0,255,150,t);
arc(x,y,n+195,n+195, radians(45), radians(a), PIE);
fill(0,255,200,t);
arc(x,y,o+210,o+210, radians(a), radians(b), PIE);
fill(0,255,255,t);
arc(x,y,p+225,p+225, radians(b), radians(c), PIE);

fill(100,255,0,t); //Third layer
arc(x,y,m+120,m+120, radians(c), radians(405), PIE);
fill(50,255,0,t);
arc(x,y,n+135,n+135, radians(45), radians (a), PIE);
fill(0,255,0,t);
arc(x,y,o+150,o+150, radians(a), radians(b), PIE);
fill(0,255,50,t);
arc(x,y,p+165,p+165, radians(b), radians(c), PIE);

fill(255,200,0,t); //Second layer
arc(x,y,m+60,m+60, radians(c), radians(405), PIE);
fill(255,255,0,t);
arc(x,y,n+75,n+75, radians(45), radians(a), PIE);
fill(200,255,0,t);
arc(x,y,o+90,o+90, radians(a), radians(b), PIE);
fill(150,255,0,t);
arc(x,y,p+105,p+105, radians(b), radians(c), PIE);

fill(255,0,0,t); //First layer
arc(x,y,m,m, radians(c), radians(405), PIE);
fill(255,50,0,t);
arc(x,y,n+15,n+15, radians(45), radians(a), PIE);
fill(255,100,0,t);
arc(x,y,o+30,o+30, radians(a), radians(b), PIE);
fill(255,150,0,t);
arc(x,y,p+45,p+45, radians(b), radians(c), PIE);

frameRate(5);  
  fill(g,g,g);
  ellipse(mouseX, mouseY, 33, 33);
  if (mousePressed == true) {
    if (mouseButton == LEFT) {
      g += 20;
    } else if (mouseButton == RIGHT) {
      g -= 20;
    }
  }
}