/* Lovato, Griffin
*
* 1/26/18
*
* Normal & Revolutionary clocks.
*
* Two clocks; the one on the right is normal, the one on the left is set to
* French Revolution time.
*/
void setup() {
  size(1000,500);
}

void draw() {
  background(80);
  int s = second();
  int m = minute();
  int h = hour();
  
  pushMatrix();
  translate(width*3/4,height/2);
  strokeWeight(10);
  stroke(0);
  fill(255);
  ellipse(0,0,300,300);
  
  strokeWeight(1);
  rect(-30,30,60,40);
  textAlign(CENTER);
  textSize(10);
  fill(0);
  text("NORMAL",0,53);
  
  float x = radians(s*6)+PI+PI/2;
  strokeWeight(3);
  stroke(255,0,0);
  line(0,0,135*cos(x),135*sin(x));
  float y = radians(m*6)+PI+PI/2;
  strokeWeight(5);
  stroke(0);
  line(0,0,135*cos(y),135*sin(y));
  float z = radians(h*30)+PI+PI/2;
  strokeWeight(10);
  fill(0);
  line(0,0,120*cos(z),120*sin(z));
  
  textSize(20);
  textAlign(CENTER);
  stroke(0);
  text("Lovato&Partners",0,5);
  popMatrix();
  
  int ts = 86400;
  int trs = 100000;
  int es = s + (m*60) + (h*3600);
  int res = floor(es * 1.157);
  int rcs = res % 100;
  int cs = es % 60;
  int rcm = (((res % 10000))-rcs)/100;
  int rch = ((((res % (100*100*10))))-(rcm*100) - rcs) / 10000;
  
  
  float rx = radians(rcs*3.6)+1.5*PI;
  float ry = radians(rcm*3.6)+1.5*PI;
  float rz = radians(rch*72)+1.5*PI;
  
  pushMatrix();
  translate(width/4,height/2);
  strokeWeight(10);
  fill(255);
  stroke(0);
  ellipse(0,0,300,300);
  
  strokeWeight(1);
  rect(-30,30,60,40);
  noStroke();
  fill(0,85,164);
  rect(-30,30,20,40);
  fill(239,65,53);
  rect(10,30,20,40);
  
  strokeWeight(3);
  stroke(255,0,0);
  line(0,0,135*cos(rx),135*sin(rx));
  strokeWeight(5);
  stroke(0);
  line(0,0,135*cos(ry),135*sin(ry));
  strokeWeight(10);
  line(0,0,120*cos(rz),120*sin(rz));
  
  textSize(20);
  textAlign(CENTER);
  fill(0);
  text("Lovato&Partners",0,5);
  popMatrix();
}