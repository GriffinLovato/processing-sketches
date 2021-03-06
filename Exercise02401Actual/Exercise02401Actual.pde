/* Lovato, Griffin
*
* 12/8/17
*
* Exercise 24 Activity 1
*
* A pretty neat doughnut chart, showing the compared populations
* of the top 6 cities in Nevada by population.
*/
float x = 300;
float y = 300;

float m = 200;
float n = 200;
float o = 200;
float p = 200;

void setup() {
  size(600,600);
  background(0);
  
  fill(255,0,0);
  arc(x,y,m,m,radians(0),radians(147),PIE);
  fill(0,255,0);
  arc(x,y,m,m,radians(147),radians(212),PIE);
  fill(0,0,255);
  arc(x,y,m,m,radians(212),radians(269),PIE);
  fill(255,255,0);
  arc(x,y,m,m,radians(269),radians(323),PIE);
  fill(0,255,255);
  arc(x,y,m,m,radians(323),radians(346),PIE);
  fill(255,0,255);
  arc(x,y,m,m,radians(346),radians(360),PIE);
  
  fill(0);
  ellipse(300,300,100,100);
  
  beginShape();
  fill(255,180,0);
  vertex(100,105);
  vertex(140,105);
  vertex(140,180);
  vertex(135,170);
  vertex(135,185);
  vertex(100,140);
  translate(175,160);
  endShape();
  
  translate(-175,-160);
  textAlign(CENTER);
  fill(255);
  textSize(20);
  text("Population of Nevada Cities",300,50);
  
  textSize(12);
  text("Las Vegas - 583,756",375,425);
  text("Henderson - 257,729",100,300);
  text("Reno - 225,221",200,200);
  text("North Las Vegas - 216,961",350,175);
  text("Sparks - 90,264",450,250);
  text("Carson City - 55,274",475,285);
  
}