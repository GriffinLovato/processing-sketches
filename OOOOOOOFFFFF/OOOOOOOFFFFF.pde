
void setup() {
  size(1000,500);
  background(255);
}

void draw() {
  int s = second()*-6;
  int m = minute()*-6;
  int h = hour()*-30;

/*int ts = s + (m*60) + (h*3600);
int trs = % (ts*1.157);
int rh = % (trs/10000);
int rm = % (trs-(rh*10000))/100;
int rs = trs-(rh*10000)-(rm*100);
*/
pushMatrix();
translate(width*3.4,height/2);
ellipse(0,0,300,300);
float x = radians(s*6);
line(0,0,150*cos(x),150*sin(x));
float y = radians(m*6);
line(0,0,150*cos(y),150*sin(y));
float z = radians(h*30);
line(0,0,150*cos(z),150*sin(z));


}

/*float revs = s*-1.157;
  
  pushMatrix();
  translate(width*3/4,height/2);
  ellipse(0,0,300,300);
  strokeWeight(2);
  line(0,0,100*cos(s),100*sin(s));
  line(0,0,90*cos(m),90*sin(m));
  strokeWeight(10);
  line(0,0,80*cos(h),80*sin(h));
  
  line(0,-145,0,-150);
  line(0,145,0,150);
  line(145,0,150,0);
  line(-145,0,-150,0);
  popMatrix();
  
  
  pushMatrix();
  translate(width/4,height/2);
  strokeWeight(10);
  ellipse(0,0,300,300);
  strokeWeight(2);
  line(0,0,100*cos(revs),100*sin(revs));
  line(0,0,90*cos(revs/100),90*sin(revs/100));
  strokeWeight(10);
  line(0,0,80*cos(revs/10000),80*sin(revs/10000));
  
  line(0,-145,0,-150);
  //line(60,125,33,130);
  popMatrix();
}
*/